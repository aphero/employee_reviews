require './album'
require './artist'

album = Album.new("Downward Spiral", 5, 12)
album2 = Album.new("Fragile", 7, 20)
artist = Artist.new("Nine Inch Nails")

artist.add_album(album)
artist.add_album(album2)
# puts artist.catalog.to_s

puts "Initial album one price: #{album.sale_price}"
puts "Initial album two price: #{album2.sale_price}"

album.set_discount(0.5)

puts "Album one after album discount: #{album.sale_price}"

artist.set_discount(0.5)

puts "Album one after artist discount: #{album.sale_price}"
puts "Album two after artist discount: #{album2.sale_price}"
