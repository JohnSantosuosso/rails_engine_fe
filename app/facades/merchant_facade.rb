class MerchantFacade
  class << self
    def get_all_merchants
      raw_merchant_data = MerchantService.call_for_all_merchants
      raw_merchant_data[:data].map do |merchant_info|
        Merchant.new(merchant_info)
      end
    end

    def get_a_merchant(merchant_id)
      raw_merchant_data = MerchantService.call_for_a_merchant(merchant_id)
       Merchant.new(raw_merchant_data[:data])
    end

    def get_merchant_items(merchant_id)
      raw_item_data = ItemService.call_for_all_merchant_items(merchant_id)
      raw_item_data[:data].map do |item_info|
        Item.new(item_info)
      end
    end
  end
end