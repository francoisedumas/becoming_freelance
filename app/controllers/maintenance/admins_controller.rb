module Maintenance
  class AdminsController < BaseController
    before_action :set_user, only: [:update]

    def update
      @user.toggle! :admin
      redirect_to maintenance_users_path
    end

    private

    def set_user
      @user = User.find(params[:user_id])
    end
  end
end
