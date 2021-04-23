class Users::RegistrationsController < Devise::RegistrationsController

  before_action :configure_permitted_parameters

  def new
    build_resource({})
    #resource.build_profile_member  // modificar para algo q tenha o nome
    respond_with self.resource
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(
          :sign_up,
          keys:[
              :email, :password, :password_confirmation,
              :name
          ]
      )
    end
end
