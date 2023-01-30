require 'json'

def sort_by_price_ascending(json_string)
  JSON.parse(json_string).sort_by { |item| [item['price'], item['name']] }.to_json
end

def sort_by_price_ascending2(json_string)
  JSON.parse(json_string).sort do
    primary = _1['price'] <=> _2['price']
    primary != 0 ? primary : _1['name'] <=> _2['name']
  end.to_json
end

puts sort_by_price_ascending2(
  [
    { 'price' => 20, 'name' => 'b' },
    { 'price' => 10, 'name' => 'b' },
    { 'price' => 30, 'name' => 'b' },
    { 'price' => 30, 'name' => 'a' }
  ].to_json
)
