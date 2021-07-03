class TeachersController < ApplicationController

    before_action :set_teacher, only: [:show, :edit, :delete]
    
    def index
        render :json => Teacher.all
    end

    def create
        render :json => Teacher.new(params)
    end

    def show
        render :json => @teacher
    end

    def edit
        render :json => @teacher.update(params)
    end

    def delete
        @teacher.destroy
    end

    private

    def set_teacher
        @teacher = Teacher.find(params[:id])
    end
    
end
