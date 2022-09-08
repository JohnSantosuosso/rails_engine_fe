class Merchant
  attr_reader :id, :name

  def initialize(merchant_info)
    @id = merchant_info[:id]
    @name = merchant_info[:attributes][:name]
    require 'pry'; binding.pry 
  end


end