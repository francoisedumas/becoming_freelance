module Maintenance
  class UsersController < BaseController
    def index
      @users = User.all.order(:created_at)
    end
  end
end
