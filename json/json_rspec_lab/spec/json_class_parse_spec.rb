require 'spec_helper'

describe 'Testing the exchange rates' do

  before(:all) do
    @exchange_rates = ParseJson.new('json_exchange_rates.json')
  end

  it 'Should be a Hash' do
    expect(@exchange_rates.json_file.class).to eq Hash
  end

  it 'should contain the base as EUR' do
    expect(@exchange_rates.get_base_value).to eq 'EUR'
  end

  it "Should have a date string" do
    expect(@exchange_rates.get_date.class).to eq String
  end


  it "should countain 31 rates" do
    expect(@exchange_rates.get_rates_count).to eq 31
  end

  it "should all rates should be Floats" do
    @exchange_rates.get_rates.values.each do |v|
      expect(v).to be_a Float
    end
  end

end