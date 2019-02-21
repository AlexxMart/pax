class RegistrationsController < Devise::RegistrationsController

    before_action :one_user_registered?, only: [:new, :create]
    
    protected
  
    def one_user_registered?
      if Admin.count <= 3
        if admin_signed_in?
          redirect_to support_centers_path
        end
      else
      redirect_to new_admin_session_path
      end
    end
  
  end