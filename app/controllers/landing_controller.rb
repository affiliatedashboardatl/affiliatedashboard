class LandingController < ApplicationController
  def show
  	if user_signed_in?
  		redirect_to dashboard_url
  	end
  end
end
