require './lib/jsonfile.rb'
require 'json'

describe JSONFile do

  let(:json_file){ './spec/test_data/hipstercoffee.json' }

  subject(:json){ described_class.new }
  
  context "#parse" do

    it 'should initialize with shop details' do
      json.parse(json_file)
      expect(json.shop_details).not_to be_empty
    end

  end
end
