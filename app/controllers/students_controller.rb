class StudentsController < ApplicationController

    before_action :set_student, only: [:show, :edit, :delete]
    
    def index
        render :json => Student.all
    end

    def create
        render :json => Student.new(params)
    end

    def show
        render :json => @student
    end

    def edit
        render :json => @student.update(params)
    end

    def delete
        @student.destroy
    end

    private

    def set_student
        @student = Student.find(params[:id])
    end
    
end
