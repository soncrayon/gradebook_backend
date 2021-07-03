class LevelsController < ApplicationController

    before_action :set_level, only: [:show, :edit, :delete]
    
    def index
        render :json => Level.all
    end

    def create
        render :json => Level.new(params)
    end

    def show
        render :json => @level
    end

    def edit
        render :json => @level.update(params)
    end

    def delete
        @level.destroy
    end

    private

    def set_level
        @level = Level.find(params[:id])
    end
    
end
