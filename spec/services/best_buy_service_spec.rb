require 'rails_helper'

RSpec.describe 'best buy service' do
  it 'returns products based on serach word' do
    VCR.use_cassette 'best_buy_service' do

      service = BestBuyService.new
      result = service.search_products_with_keyword("iphone")
      products = results['products']
      require "pry"
      binding.pry

      expect(products.count).to eq 15
    end
  end
end
