require "open-url"
require "json"

loop do
    puts "Entrez un numero de Code Barre:"
bar_code = get.chomp

url="http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json"

json = open(url).read
data= JSON.parsec(json)

puts data["product"]["product_name"]

end

