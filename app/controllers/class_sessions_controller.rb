class ClassSessionsController < ApplicationController

    def index
    end

    def create
        #  TODO: This needs to be the last stop after fetches are made to other models to populate foreign keys
    end

    def show
    end

    def edit
    end

    def delete
    end

    private

    def class_sessions_params
        # FIXME: Make sure this provides the right params
        params.require(:class_session).permit(:id, :teacher_id, :level_id, :course_id, :period_id, :section_id)
    end

end
