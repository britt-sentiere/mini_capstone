
# product = Product.new(
#                       name: "Galaxy Donut",
#                       price: 4,
#                       image_url: "https://2o7fsh4anuayrnrhe3us6v71-wpengine.netdna-ssl.com/wp-content/uploads/2019/01/Galaxy-Donuts-Workshop.jpg",
#                       description: "Old Fashioned sour cream donuts with space-colored frosting, sugar spray and golden sprinkles."
#                       )
# product.save

# product = Product.new(
#                       name: "Unicorn Donut",
#                       price: 5,
#                       image_url: "https://s3-media2.fl.yelpcdn.com/bphoto/Yuc2oGa067LTmPX2OczerQ/o.jpg",
#                       description: "Soft, perfectly sweet with a hint of citrus flavor. Get ready to taste the magic!"
#                       )
# product.save

# product = Product.new(
#                       name: "Fruity Pebble Donut",
#                       price: 3,
#                       image_url: "https://i.pinimg.com/originals/e5/37/16/e53716a1f65b05597174c5d8a03ef9ea.jpg",
#                       description: "Baked vanilla donuts with a Fruity Pebble cereal milk glaze."
#                       )
# product.save



# Categories
# [[1, "Cheap"], [2, "Expensive"], [3, "Damage"], [4, "Wrong Item"], [5, "Gluten Free"], [6, "Vegan"]]

# Products
# [
# [2, "Unicorn Donut", 0.5e1], 
# [7, "S'mores Donut", 0.4e1], 
# [6, "Earl Grey Donut with Brown Butter Glaze", 0.2e1], 
# [8, "Blueberry Lemon Donut", 0.3e1], 
# [9, "Vanilla Sprinkle Donut", 0.2e1], 
# [10, "Super Sparkle Donut", 0.5e1], 
# [1, "Galaxy Donut", 0.4e1]]

ProductCategory.create(product_id: 1, category_id: 2)
ProductCategory.create(product_id: 1, category_id: 6)
ProductCategory.create(product_id: 2, category_id: 2)
ProductCategory.create(product_id: 7, category_id: 2)
ProductCategory.create(product_id: 6, category_id: 1)
ProductCategory.create(product_id: 6, category_id: 5)
ProductCategory.create(product_id: 6, category_id: 6)
ProductCategory.create(product_id: 8, category_id: 1)
ProductCategory.create(product_id: 8, category_id: 5)
ProductCategory.create(product_id: 9, category_id: 1)
ProductCategory.create(product_id: 9, category_id: 6)
ProductCategory.create(product_id: 10, category_id: 2)

