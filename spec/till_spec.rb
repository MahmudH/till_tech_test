require './app/till.rb'
require 'json'

describe Till do

    file = File.read('./spec/test_data/hipstercoffee.json')
    let(:store_details){ JSON.parse(file) }

  let(:menu){ double(:menu, :shop_details => store_details[0]) }

  let(:menu_klass){ double(:menu_klass, :new => menu)}
  subject(:till){ described_class.new(menu_klass) }

  context "#initialize" do
    it "initializes with shop details" do
      expect(till.menu.shop_details["prices"][0]).to include("Cafe Latte")
    end
  end

  #context "#add_order" do
    #it 'increases total number of items' do
      #item_name = "Cafe Latte"
      #qty = 2
      #till.add_order(item_name, qty)
      #expect(till.total_items[item_name]).to eq(2)
    #end

    #it "increases sum of order" do
      #expect(till.add_order("Cafe Latte", 2)).to eq(9.5)
    #end

    #it "should give discount if order is above £50" do
      #expect(till.add_order("Cafe Latte", 12)).to eq(54.15)
    #end

    ##it "should give discount if they ordered a muffin" do
    ##end
  #end

  #context "#calculate_tax" do
    #it "calculate the amount of tax per order" do
      #till.add_order("Cafe Latte", 2)
      #expect(till.calculate_tax(8.64)).to eq(0.82)
    #end
  #end

  #context "#calculate change" do
    #it "return amount of change" do
      #expect(till.calculate_change(8.0, 10.0)).to eq(2.0)
    #end
  #end
end
