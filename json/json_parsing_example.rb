require 'json'

json = File.read('json_example.json')

# p json

#We take a json file and then we parse it into a hash.

json_parse = JSON.parse(json)

p json_parse