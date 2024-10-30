class DashboardController < ApplicationController
  def index
    @user = User.first
    @audits = @user.audits
  end
  def show

  end
end
