class DashboardController < ApplicationController
  def index
  	@referreds = current_user.referreds.all
  end

  def purchases
    @purchases = current_user.orders.all
  end
end
