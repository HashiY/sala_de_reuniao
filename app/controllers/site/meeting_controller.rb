class Site::MeetingController < ApplicationController
  layout "site"
  def index
  end

  def data
    meetings = Meeting.all
 
    render :json => meetings.map {|meeting| {
               :id => meeting.id,
               :start_date => meeting.start_date.to_formatted_s(:db),
               :end_date => meeting.end_date.to_formatted_s(:db),
               :description => meeting.description,
               :rec_type => meeting.rec_type,
               :meeting_length => meeting.meeting_length,
               :meeting_pid => meeting.meeting_pid
           }}
  end

  def db_action
    mode = params["!nativeeditor_status"]
    id = params["id"]
    start_date = params["start_date"]
    end_date = params["end_date"]
    description = params["description"]
    rec_type = params['rec_type']
    meeting_length = params['meeting_length']
    meeting_pid = params['meeting_pid']
    tid = id
 
    case mode
      when "inserted"
        meeting = Meeting.create :start_date => start_date, :end_date => end_date, :description => description,
                    :rec_type => rec_type, :meeting_length => meeting_length, :meeting_pid => meeting_pid
        tid = meeting.id

        if rec_type == 'none'
          mode = 'deleted'
        end
 
      when "deleted"
        if rec_type != ''
          Meeting.where(meeting_pid: id).destroy_all
        end
 
        if meeting_pid != 0 and meeting_pid != ''
          meeting = Meeting.find(id)
          meeting.rec_type = 'none'
          meeting.save
        else
          Meeting.find(id).destroy
        end
 
      when "updated"
        if rec_type != ''
          Meeting.where(meeting_pid: id).destroy_all
        end
        meeting = Meeting.find(id)
        meeting.start_date = start_date
        meeting.end_date = end_date
        meeting.description = description
        meeting.rec_type = rec_type
        meeting.meeting_length = meeting_length
        meeting.meeting_pid = meeting_pid
        meeting.save
    end
 
    render :json => {
               :type => mode,
               :sid => id,
               :tid => tid,
           }
  end
end
