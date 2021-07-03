class CoursesController < ApplicationController

    before_action :set_course, only: [:show, :edit, :delete]
    
    def index
        render :json => Course.all
    end

    def create
        render :json => Course.new(params)
    end

    def show
        render :json => @course
    end

    def edit
        render :json => @course.update(params)
    end

    def delete
        @course.destroy
    end

    private

    def set_course
        @course = Course.find(params[:id])
    end
    
end
