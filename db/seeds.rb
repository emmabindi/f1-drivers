# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create(
  # [{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@drivers = Driver.create(
[
  {name: "Kimi Raikkonen", team: "Alfa Romeo", profile: "https://www.formula1.com/content/fom-website/en/drivers/kimi-raikkonen/_jcr_content/image.img.640.medium.jpg/1584012751723.jpg"}, 
  {name: "Charles Leclerc", team: "Ferrari", profile: "https://www.formula1.com/content/fom-website/en/drivers/charles-leclerc/_jcr_content/image.img.640.medium.jpg/1584013824254.jpg"}
]
)

# maybe take out @drivers = 

# drivers.each do |driver|
#   Driver.create()


# another option
# drivers = [
#   {name: "Kimi Raikkonen", 
#   team: "Alfa Romeo", 
#   profile: "https://www.formula1.com/content/fom-website/en/drivers/kimi-raikkonen/_jcr_content/image.img.640.medium.jpg/1584012751723.jpg"}, 
#   {name: "Charles Leclerc", 
#   team: "Ferrari", 
#   profile: "https://www.formula1.com/content/fom-website/en/drivers/charles-leclerc/_jcr_content/image.img.640.medium.jpg/1584013824254.jpg"}
# ]