class ItemService
  class << self
    def call_for_all_merchant_items(merchant_id)
      response = connection.get("/api/v1/merchants/#{merchant_id}/items")
      parse_data(response)
    end


  private
    def connection
      Faraday.new(url: "http://localhost:3000") do |faraday|
        faraday
      end
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end