class ProfilesController < ApplicationController
  def show
    @user = current_user
    @completed_lessons = @user.user_lessons.completed
  end
end
