require './lib/menu.rb'
require 'json'

describe Menu do

  let(:json_file){ './spec/test_data/hipstercoffee.json' }

  let(:json_klass) { double(:json_klass, :parse => [{"shopName": "The Coffee Connection", "address": "123 Lakeside Way"}]) }




  subject(:menu) { described_class.new(json_klass, json_file)}
  let(:menu_details) { menu.menu_details }

  context "#initialize" do
    it "parse the json data" do
      expect(menu_details).not_to be_empty
    end
  end

  context "show shop detail from the json" do
    it "displays the shop name" do
      puts "the menu contains"
      puts menu_details[0]["shopName"]
      expect(menu.shop_name).to eq("The Coffee Connection")
    end
  end

end
