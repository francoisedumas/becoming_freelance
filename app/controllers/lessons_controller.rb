class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all.order(position: :asc)
  end

  def show
    @lesson = Lesson.includes(:learning_blocks, :exercises, :resources).find(params[:id])
    @learning_blocks = @lesson.learning_blocks
    @resources = @lesson.resources
    @exercises = @lesson.exercises
    @user_exercises = user_exercises
    @previous_lesson = @lesson.previous_lesson
    @next_lesson = @lesson.next_lesson
  end

  private

  def user_exercises
    @exercises.map do |exercise|
      UserExercise.find_or_create_by(user: current_user, exercise: exercise)
    end
  end
end
