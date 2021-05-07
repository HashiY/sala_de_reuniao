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
               :text => meeting.text
           }}
  end

  def db_action
    mode = params["!nativeeditor_status"]
    id = params["id"]
    start_date = params["start_date"]
    end_date = params["end_date"]
    text = params["text"]
 
    case mode
      when "inserted"
        meeting = Meeting.create :start_date => start_date, :end_date => end_date, :text => text
        tid = meeting.id
 
      when "deleted"
        Meeting.find(id).destroy
        tid = id
 
      when "updated"
        meeting = Meeting.find(id)
        meeting.start_date = start_date
        meeting.end_date = end_date
        meeting.text = text
        meeting.save
        tid = id
    end
 
    render :json => {
               :type => mode,
               :sid => id,
               :tid => tid,
           }
  end
end
