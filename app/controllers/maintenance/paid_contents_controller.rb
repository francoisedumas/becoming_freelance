module Maintenance
  class PaidContentsController < ApplicationController
    before_action :set_lesson, only: [:update]

    def update
      @lesson.toggle! :paid_content
      head :ok
    end

    private

    def set_lesson
      @lesson = Lesson.find(params[:lesson_id])
    end
  end
end
