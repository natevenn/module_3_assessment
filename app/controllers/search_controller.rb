class SearchController < ApplicationController
  def index
    items = BestBuyItem.new
    @items = items.search_items(params[:search])
    require "pry"
    binding.pry
  end
end
