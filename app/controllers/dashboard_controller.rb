class DashboardController < ApplicationController
  def index
    @user = User.all
    @user.each { |user|
     @audits = user.audits
    }
    @audits
  end
  def show

  end
end
