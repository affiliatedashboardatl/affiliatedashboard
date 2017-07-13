require 'commission_junction'
require 'developer_credential'

class CjController < ApplicationController
	before_action :authenticate_user!

	def performance
		dev_key = current_user.developer_credentials.where(integration_id: 'cj', title: 'Developer Key').first.value
		website_id = current_user.developer_credentials.where(integration_id: 'cj', title: 'Website ID').first.value

		cj = CommissionJunction.new(dev_key, website_id)
		@commissions = cj.commissions('start-date' => '2017-06-01', 'end-date' => '2017-06-30')
		sum = 0
		@commissions.map { |c| sum += c.commission_amount.to_f }
		flash.notice = sum
  	end

end
