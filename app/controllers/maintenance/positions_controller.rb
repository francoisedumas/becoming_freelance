module Maintenance
  class PositionsController < ApplicationController
    before_action :set_lesson, only: [:update]

    def update

      p "*"*100
      p "*"*100
      @lesson.insert_at(params[:position].to_i)
      head :ok
    end

    private

    def set_lesson
      @lesson = Lesson.find(params[:lesson_id])
    end
  end
end
