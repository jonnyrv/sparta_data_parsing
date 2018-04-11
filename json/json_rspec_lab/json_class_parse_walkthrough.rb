require 'json'

# This walkthrough gives and example of iterating

class ParseJson

  attr_accessor :json_file
  # Initialise the read and parsing of the JSON file
  # When providing an argument to an initialise method means you must give class initialisation with the argument
  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
  end

  def get_base_value 
    @json_file['base']
  end

  def get_date
    @json_file['date']
  end

  def get_rates_count
    @json_file['rates'].count
  end

  def get_rates
    @json_file['rates']
  end


  def number_of_rate_keys
  end

  def number_of_rate_values
  end

end

run = ParseJson.new('json_exchange_rates.json')

p run.get_base_value

# json = ParseJson.new('json_exchange_rates.json')
