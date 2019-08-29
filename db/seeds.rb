# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


product = Product.new(
                      name: "Galaxy Donut"
                      price: 4
                      image_url: "https://2o7fsh4anuayrnrhe3us6v71-wpengine.netdna-ssl.com/wp-content/uploads/2019/01/Galaxy-Donuts-Workshop.jpg"
                      description: "The Galaxy Donut is topped with space-colored frosting, sugar spray and golden sprinkles."
                      )

product.save

product = Product.new(
                      name: "Unicorn Donut"
                      price: 5
                      image_url: "https://s3-media2.fl.yelpcdn.com/bphoto/Yuc2oGa067LTmPX2OczerQ/o.jpg"
                      description: "Soft, perfectly sweet with a hint of citrus flavor. Get ready to taste the magic!"
                      )

product.save

product = Product.new(
                      name: "Fruity Pebble Donut"
                      price: 3
                      image_url: "https://i.pinimg.com/originals/e5/37/16/e53716a1f65b05597174c5d8a03ef9ea.jpg"
                      description: "Gorgeous baked vanilla donuts with a  Fruity Pebble cereal milk glaze."
                      )

product.save