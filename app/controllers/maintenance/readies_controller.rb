module Maintenance
  class ReadiesController < BaseController
    before_action :set_lesson, only: [:update]

    def update
      @lesson.toggle! :ready
      head :ok
    end

    private

    def set_lesson
      @lesson = Lesson.find(params[:lesson_id])
    end
  end
end
