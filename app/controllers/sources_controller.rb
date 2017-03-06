class SourcesController < ApplicationController
    def index
        @sources = Source.all
    end
    
    def show 
        @id = params[:id]
        @source = Source.find(@id)
    end
    
    def new
        @source = Source.new
    end
    
    def create
        Source.create(source_params)
        redirect_to sources_path
    end
    
    def edit
        @source = Source.find(params[:id])
    end
    
    def update
        source = Source.find(params[:id])
        source.update(source_params)
        redirect_to source_path(source)
    end
    
    def destroy
        source = Source.find(params[:id])
        source.destroy
        redirect_to sources_path
    end
    
    def source_params
        params.require(:source).permit(:title, :year, :is_free, :access_link, :site_name, :publication, :additional_info, :description, :tag_list)
    end
        
end