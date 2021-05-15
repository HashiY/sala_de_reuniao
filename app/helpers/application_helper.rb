module ApplicationHelper

    def devise_sign_in?
        params[:controller] == 'users/sessions' ? '' : 'display:none;'
    end

    def devise_sign_up?
        params[:controller] == 'users/registrations' ? '' : 'display:none;'
    end

    def readable_time(time)
        time.strftime("%b %d, %I:%M%P")
    end
    
    def author_of(record)
        user_signed_in? && current_user.id == record.user_id
    end

end
