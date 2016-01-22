require './lib/menu.rb'
require 'json'

describe Menu do

  let(:json_file){ './spec/test_data/hipstercoffee.json' }

  let(:json_klass) { double(:json_klass, :parse => [{"shopName": "The Coffee Connection", "address": "123 Lakeside Way", "phone": "123", "prices": ["Caffe Latte": 4.75]}]) }




  subject(:menu) { described_class.new(json_klass, json_file)}
  let(:menu_details) { menu.menu_details }

  context "#initialize" do
    it "parse the json data" do
      expect(menu_details).not_to be_empty
    end
  end

  context "show shop detail from the json" do

    it "displays the shop name" do
      expect(menu.shop_name).to eq("The Coffee Connection")
    end

    it "displays the shop address" do
      expect(menu.shop_address).to eq("123 Lakeside Way")
    end

    it "displays the shop phone number" do
      expect(menu.shop_phone).to eq("123")
    end

    it "displays the product lists and prices" do
      expect(menu.shop_prices).to eq("Caffe Latte": 4.75)
    end

  end

end
