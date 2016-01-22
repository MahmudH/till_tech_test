require_relative 'menu'
require_relative 'data'

class Till

  attr_reader :menu, :total_items, :sum

  def initialize(menu = Menu.new)
    @menu = menu
    @total_items = Hash.new
    @sum = 0
  end

  def add_order(item_name, qty)
    @total_items[item_name]= qty
    @sum += (@menu.shop_details[0]["prices"][0][item_name]) * qty
    apply_discount
  end

  def calculate_tax(tax_amount)
    @tax_sum = ((tax_amount / 100) * @sum).round(2)
  end

  def calculate_change(sum, payment_received)
    payment_received - sum
  end

  private

  def apply_discount
    @sum > 50 ? @sum -= (@sum/100) * 5 : @sum
    #@total_items.include? "Muffin" ? 
  end

end
