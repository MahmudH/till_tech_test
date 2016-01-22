require 'json'

class JSONFile
  attr_reader :shop_details

  def parse(filename)
    file = File.read(filename)
    @shop_details = JSON.parse(file, :symbolize_names => true)
  end
end
