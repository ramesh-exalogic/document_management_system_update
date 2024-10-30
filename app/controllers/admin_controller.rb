class AdminController < ApplicationController
	before_action :authorize_admin!

  def index
    # Admin-only content
  end
end
