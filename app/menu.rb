require_relative 'data'

class Menu

  def initialize(data_klass = JSONData.new)
    @JsonData = data_klass
  end

  def shop_name
    @JsonData.read_data[0]["shopName"]
  end

  def address
    @JsonData.read_data[0]["address"]
  end

  def phone_number
    @JsonData.read_data[0]["phone"]
  end

  def read_menu
    @JsonData.read_data[0]["prices"][0]
  end

end
