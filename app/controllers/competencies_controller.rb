class CompetenciesController < ApplicationController

    before_action :set_competency, only: [:show, :edit, :delete]
    
    def index
        render :json => Competency.all
    end

    def create
        render :json => Competency.new(params)
    end

    def show
        render :json => @competency
    end

    def edit
        render :json => @competency.update(params)
    end

    def delete
        @competency.destroy
    end

    private

    def set_competency
        @competency = Competency.find(params[:id])
    end
    
end
