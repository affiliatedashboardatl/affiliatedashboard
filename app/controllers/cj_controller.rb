require 'commission_junction'
require 'developer_credential'

class CjController < ApplicationController
	before_action :authenticate_user!

	def report

	end

	def performance
		start_date = params[:startDate]
		end_date = params[:endDate]
		dev_key = current_user.developer_credentials.where(integration_id: 'cj', title: 'Developer Key').first.value
		website_id = current_user.developer_credentials.where(integration_id: 'cj', title: 'Website ID').first.value

		cj = CommissionJunction.new(dev_key, website_id)
		@commissions = cj.commissions('start-date' => start_date, 'end-date' => end_date)
		#sum = 0
		#@commissions.map { |c| sum += c.commission_amount.to_f }
		#flash.notice = sum

		render :layout => false
  	end

end
