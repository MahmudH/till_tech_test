require_relative 'jsonfile'

class Menu
  attr_reader :menu_details

  def initialize(jsonfile_klass = JSONFile.new, filename)
    @menu_details = jsonfile_klass.parse(filename)
  end

  def shop_name
    @menu_details[0][:shopName]
  end

  def shop_address
    @menu_details[0][:address]
  end

  def shop_phone
    @menu_details[0][:phone]
  end

  def shop_prices
    @menu_details[0][:prices][0]
  end
end
