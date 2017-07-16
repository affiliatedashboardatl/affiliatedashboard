class DashboardController < ApplicationController
  def home
  	unless user_signed_in?
  		redirect_to root_url
  	end
  end
end
