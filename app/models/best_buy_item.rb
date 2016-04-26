class BestBuyItem
  attr_reader :service

  def initialize
    @service = BestBuyService.new
  end

  def search_items(keyword)
    service.search_products_with_keyword(keyword)
  end
end
