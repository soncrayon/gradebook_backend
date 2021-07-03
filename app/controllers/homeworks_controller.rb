class HomeworksController < ApplicationController

    before_action :set_homework, only: [:show, :edit, :delete]
    
    def index
        render :json => Homework.all
    end

    def create
        render :json => Homework.new(params)
    end

    def show
        render :json => @homework
    end

    def edit
        render :json => @homework.update(params)
    end

    def delete
        @homework.destroy
    end

    private

    def set_homework
        @homework = Homework.find(params[:id])
    end
    
end
