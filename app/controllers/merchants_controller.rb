class MerchantsController < ApplicationController

  def index
    @merchants = MerchantFacade.get_all_merchants
  end

end