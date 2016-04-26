class SearchController < ApplicationController
  def index
    items = BestBuyItem.new
    @search_name = params[:search]
    @items = items.search_items(params[:search])
  end
end
