class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV['ADMIN_USERNAME'], password: ENV['ADMIN_PASSWORD']

  def show
    @dashboard_count = Product.all.count
    @dashboard_cats = Category.all.count
  end
end
