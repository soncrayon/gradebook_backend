class SectionsController < ApplicationController

    before_action :set_section, only: [:show, :edit, :delete]
    
    def index
        render :json => Section.all
    end

    def create
        render :json => Section.new(params)
    end

    def show
        render :json => @section
    end

    def edit
        render :json => @section.update(params)
    end

    def delete
        @section.destroy
    end

    private

    def set_student
        @section = Section.find(params[:id])
    end
    
end
