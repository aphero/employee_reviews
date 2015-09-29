require './vehicles'

motorcycle = Vehicle.new(67, 2)
puts motorcycle.number_of_wheels

hash = {electric_cars: { wheels: 4, engines: 1, gears: 1, wings: 0},
        hybrid_cars: { wheels: 4, engines: 2, gears: 4, wings: 0}
        motorcycles: { wheels: 2, engines: 1, gears: 4, wings: 0}
        planes: { wheels: 6, engines: 2, gears: 1, wings: 2}}
vehicles = Vehicle.new(hash)
