class DashboardController < ApplicationController
  def index
    #@dashboard = Dashboard.new
    @user = User.all
    @user.each { |user|
     @audits = user.audits
    }
    @audits
  end

  def new
    
  end

  

  def show

  end
end
