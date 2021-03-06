class CommentsController < ApplicationController
    before_action :authenticate_user! # autenticar antes que alguém possa comentar quem não está logado.
    before_action :set_comment, only: [:edit, :update, :show, :destroy]
    before_action :set_meeting

    def new
        @comment = Comment.new
    end

    def create
        @comment = @meeting.comments.create(params[:comment].permit(:reply, :meeting_id))
        @comment.user_id = current_user.id
    
        respond_to do |format|
          if @comment.save
            format.html { redirect_to meeting_path(@meeting) }
            format.js # renders create.js.erb
          else
            format.html { redirect_to meeting_path(@meeting), notice: "Seu comentário não foi salvo. Por favor, tente novamente." }
            format.js
          end
        end
    end
    
    def destroy
        @comment = @meeting.comments.find(params[:id])
        @comment.destroy
        redirect_to meeting_path(@meeting)
    end


    private
  
    def set_meeting
        @meeting = Meeting.find(params[:meeting_id])
    end

    def set_comment
        @comment = Comment.find(params[:id])
    end

    def comment_params
        params.require(:comment).permit(:reply)
    end

end
