class Usersdsd::RegistrationsController < Devise::RegistrationsController
  def new
    if user_signed_in?
      redirect_to root_path, alert: 'You are already signed in.'
    else
      super
    end
  end
end
