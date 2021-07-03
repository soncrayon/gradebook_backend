class ClassSessionsController < ApplicationController

    before_action :set_class_session, only: [:show, :edit, :delete]
    
    def index
        render :json => ClassSession.all
    end

    def create
        render :json => ClassSession.new(params)
    end

    def show
        render :json => @class_session
    end

    def edit
        render :json => @class_session.update(params)
    end

    def delete
        @class_session.destroy
    end

    private

    def set_class_session
        @class_session = ClassSession.find(params[:id])
    end

    def class_sessions_params
        # FIXME: Make sure this provides the right params
        params.require(:class_session).permit(:id, :teacher_id, :level_id, :course_id, :period_id, :section_id)
    end

end
