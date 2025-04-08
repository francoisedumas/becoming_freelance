class UserLessonsController < ApplicationController
  def update
    @user_lesson = UserLesson.find(params[:id])
    @user_lesson.toggle! :completed

    head :ok
  end
end
