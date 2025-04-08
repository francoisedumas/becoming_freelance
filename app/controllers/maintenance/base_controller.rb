module Maintenance
  class BaseController < ApplicationController
    before_action :authenticate_admin!
    http_basic_authenticate_with name: ENV["ADMIN_SECRET_NAME"], password: ENV["ADMIN_SECRET_PASSWORD"]

    private

    def authenticate_admin!
      redirect_to root_path, alert: 'You are not authorized to access this page.' unless current_user&.admin?
    end
  end
end
