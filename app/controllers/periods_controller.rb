class PeriodsController < ApplicationController

    before_action :set_period, only: [:show, :edit, :delete]
    
    def index
        render :json => Period.all
    end

    def create
        render :json => Period.new(params)
    end

    def show
        render :json => @period
    end

    def edit
        render :json => @period.update(params)
    end

    def delete
        @period.destroy
    end

    private

    def set_period
        @period = Period.find(params[:id])
    end
    
end
