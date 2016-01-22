require 'json'

class JSONData

  def read_data
    file = File.read('./hipstercoffee.json')
    @shop_details = JSON.parse(file)
  end

end
