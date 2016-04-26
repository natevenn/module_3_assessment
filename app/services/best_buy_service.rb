class BestBuyService

  def initialize
    @connection = Faraday.new("http://api.bestbuy.com/v1/products"
    connection.params['apiKey'] = ENV['best_buy_api_key']
  end

  def search_products_with_keyword(keyword)
    parse(connection.get("(longDescription=#{keyword})?pageSize=15&show=name,salePrice,image,customerReviewAverage,shortDescription&format=json"))
  end

  private

    def parse(response)
      JSON.parse(response.body, object_class: OpenStruct)
    end
end
