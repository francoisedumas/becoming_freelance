class UserExercisesController < ApplicationController
  def update
    @user_exercise = UserExercise.find(params[:id])
    @user_exercise.toggle! :completed

    head :ok
  end
end
