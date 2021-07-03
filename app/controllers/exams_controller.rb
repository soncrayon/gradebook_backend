class ExamsController < ApplicationController

    before_action :set_exam, only: [:show, :edit, :delete]
    
    def index
        render :json => Exam.all
    end

    def create
        render :json => Exam.new(params)
    end

    def show
        render :json => @exam
    end

    def edit
        render :json => @exam.update(params)
    end

    def delete
        @exam.destroy
    end

    private

    def set_exam
        @exam = Exam.find(params[:id])
    end
    
end
