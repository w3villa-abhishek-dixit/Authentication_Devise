class Users::RegistrationsController < Devise::RegistrationsController
    protected
  
    # Redirect user to login page after sign-up with a flash message
    def after_sign_up_path_for(resource)
      flash[:notice] = "You can log in now."
      new_user_session_path # Redirect to login page
    end
  
    # Prevent Devise from signing in users after sign-up
    def sign_up(resource_name, resource)
      # Do nothing (this prevents automatic sign-in)
    end
  end
  