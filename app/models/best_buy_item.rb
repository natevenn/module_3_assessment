class BestBuyItem
  attr_reader :service

  def initialize
    @service = BestBuyService.new
  end

  def search_items(keyword)
    format_keyword(keyword)
    service.search_products_with_keyword(keyword).products
  end

  def format_keyword(keyword)
    keyword.gsub!(" ", "%20")
  end
end
