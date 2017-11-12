class SearchController < ApplicationController
    def new
        @search = Search.new
        @category = Item.uniq.pluck(:category)
    end
    
    def create
        @search = Search.create(search_params)
        redirect_to @search
    end
    
    def show
        @search = Search.find(params[:id])
    end
    
    
    private
    
    def search_params
        params.require(:search).permit(:discount_rate, :category, :business, :location, :time)
    end
end
