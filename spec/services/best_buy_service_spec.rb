require 'rails_helper'

RSpec.describe 'best buy service' do
  it 'returns products based on serach word' do
    VCR.use_cassette 'best_buy_service' do

      service = BestBuyService.new
      result = service.search_products_with_keyword("sennheiser")


    end
  end
end
