class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:id])
    @learning_blocks = @lesson.learning_blocks
    @exercises = @lesson.exercises
    @resources = @lesson.resources
  end
end
