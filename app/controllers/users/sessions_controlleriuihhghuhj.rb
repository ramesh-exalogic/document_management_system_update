class Usersff::SessionsController < Devise::SessionsController
  def new
    if user_signed_in?
      redirect_to root_path, alert: 'You are already signed in.'
    else
      super
    end
  end

   def destroy
    reset_session
    super # Call the original Devise sign-out behavior
   end
end