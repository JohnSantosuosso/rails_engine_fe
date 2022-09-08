class MerchantFacade
  class << self
    def get_all_merchants
      raw_merchant_data = MerchantService.call_for_all_merchants
      raw_merchant_data[:data].map do |merchant_info|
        Merchant.new(merchant_info)
      end
    end
  end
end