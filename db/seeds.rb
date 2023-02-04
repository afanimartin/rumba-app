# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = Role.new({name: "user"})
user.save!

delivery_boy = Role.new({name: "delivery-boy"})
delivery_boy.save!

restaurant = Role.new({name: "restaurant"})
restaurant.save!

super_admin = Role.new({name: "super-admin"})
super_admin.save!

Category.create([{
:name => "pizza",
:image_url => "https://res.cloudinary.com/dmyhendcr/image/upload/v1670924631/rumba_uploads/categories/pizza_h6fkly.png",
},
{
:name => "local food",
:image_url => "https://res.cloudinary.com/dmyhendcr/image/upload/v1670924056/rumba_uploads/categories/localfood_uqnnme.png",
},
{
:name => "middle eastern",
:image_url => "https://res.cloudinary.com/dmyhendcr/image/upload/v1670924056/rumba_uploads/categories/middleeastern_qxxrfc.png",
}
])
