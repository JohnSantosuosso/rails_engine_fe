class MerchantService
  class << self
    def call_for_all_merchants
      response = connection.get("/api/v1/merchants")
      parse_data(response)

    end


  private
    def connection
      Faraday.new(url: "http://localhost:3000") do |faraday|
        faraday
        # faraday.params[:query] = query unless query.nil?
      end
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end