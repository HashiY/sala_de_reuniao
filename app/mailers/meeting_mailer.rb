class MeetingMailer < ApplicationMailer
    helper :application
    default from: "meeting@exemple.com"
  
    def meeting_scheduled
      @meeting = params[:meeting]
      @user = params[:user]
  
      mail(to: @user.email, subject: "Confirmação de Nova Sessão")
    end
end