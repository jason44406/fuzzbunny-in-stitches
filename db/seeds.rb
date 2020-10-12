# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?

  Product.delete_all

  Product.create!(
    title: "The First Product",
    description: "This is the first product, fine as you can see.  It's a really great product that you should consider purchasing.",
    image_url: "a.jpeg",
    price: 15.99,
    quantity: 8
  )

  Product.create!(
    title: "Second Product",
    description: "This is the second product, It's a pretty nice product.  Many people like this product, so many it's out of stock!  Check back soon.",
    image_url: "b.jpeg",
    price: 21.99,
    quantity: 0
  )

  Product.create!(
    title: "The Third Product",
    description: "This is the third product, cream of the crop.  Clearly better than the others, it's the best product that you should consider purchasing.",
    image_url: "c.png",
    price: 25.99,
    quantity: 12
  )

  Product.create!(
    title: "The Value Product",
    description: "This is the value product, it's not too bad.  Customers love it because it has a great price.",
    image_url: "d.jpg",
    price: 4.99,
    quantity: 19
  )

end