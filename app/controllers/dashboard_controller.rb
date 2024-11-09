class DashboardController < ApplicationController
  def index
    #@dashboard = Dashboard.new
    user_id = current_user.id
    #byebug
    user = User.find(user_id)
    if user.articles.present?
     @user_articles = user.articles
    else
    @user_articles =[]
  end
  end

  def new
    
  end

  

  def show

  end
end
