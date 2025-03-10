# class ApplicationController < ActionController::Base
#   # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
#   allow_browser versions: :modern
# end



class ApplicationController < ActionController::Base
  protected

  def after_sign_in_path_for(resource)
    root_path # Redirect to home page after login
  end
end

