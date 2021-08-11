# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Garden.destroy_all if Rails.env.development?
puts "Database cleaned"
puts "Creating Gardens"
rick = Garden.create!(
  name: "Rick's Garden",
  banner_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F6%2F2019%2F07%2Fram_723783287839232-2000.jpg"
)

plant_one = Plant.create!(
  name: 'Mega Seed',
  image_url:'https://res.cloudinary.com/teepublic/image/private/s--5SfsTytg--/t_Resized%20Artwork/c_fit,g_north_west,h_954,w_954/co_000000,e_outline:48/co_000000,e_outline:inner_fill:48/co_ffffff,e_outline:48/co_ffffff,e_outline:inner_fill:48/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_auto,h_630,q_90,w_630/v1573655543/production/designs/6714487_0.jpg',
  garden: rick
)

plant_two = Plant.create!(
  name: 'Pickle Rick',
  image_url:'https://cdn.vox-cdn.com/thumbor/URrn4TI0ywGpN7TToSXEJzCftfg=/0x0:1280x720/1200x800/filters:focal(613x158:817x362)/cdn.vox-cdn.com/uploads/chorus_image/image/59487635/pickle_rick_work.0.jpg',
  garden: rick
)

other = Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)
puts "Finished creating gardens"
