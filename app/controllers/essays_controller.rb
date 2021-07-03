class EssaysController < ApplicationController

    before_action :set_essay, only: [:show, :edit, :delete]
    
    def index
        render :json => Essay.all
    end

    def create
        render :json => Essay.new(params)
    end

    def show
        render :json => @essay
    end

    def edit
        render :json => @essay.update(params)
    end

    def delete
        @essay.destroy
    end

    private

    def set_essay
        @essay = Essay.find(params[:id])
    end
    
end
