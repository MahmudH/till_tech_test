require 'json'

class Menu

  attr_reader :shop_details

  def initialize()
    file = File.read('./hipstercoffee.json')
    @shop_details = JSON.parse(file)
  end

end
