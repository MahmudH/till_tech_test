require_relative 'jsonfile'

class Menu
  attr_reader :menu_details

  def initialize(jsonfile_klass = JSONFile.new, filename)
    @menu_details = jsonfile_klass.parse(filename)
  end

  def shop_name
    @menu_details[0][:shopName]
  end
end
