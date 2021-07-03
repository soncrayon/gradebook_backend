class ScoresController < ApplicationController

    before_action :set_score, only: [:show, :edit, :delete]
    
    def index
        render :json => Score.all
    end

    def create
        render :json => Score.new(params)
    end

    def show
        render :json => @score
    end

    def edit
        render :json => @score.update(params)
    end

    def delete
        @score.destroy
    end

    private

    def set_score
        @score = Score.find(params[:id])
    end
    
end
