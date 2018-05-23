# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating families..."

User.destroy_all
user = User.create(first_name: "A", last_name: "Y", email: "a@hotmail.fr", password: "1234")
families = [
  {
    name: "Cohens",
    description: "Blabla",
    capacity: 4,
    price_pppn: 130
  },
  {
    name: "Simpsons",
    description: "We are yellow people",
    capacity: 4,
    price_pppn: 12
  },
  {
    name: "Malcolm's family",
    description: "We have 2 genius kids and a dumb one. But we are nice. Come and have some fun.",
    capacity: 2,
    price_pppn: 70
  },
  {
    name: "Addams",
    description: "Family of weirdos. Come shake the Thing's hand",
    capacity: 4,
    price_pppn: 130
  },
  {
    name: "Kardashians",
    description: "Famous thanks to a beautiful sextape. Come have some fun making one of your own. Leisures: Spending a lot of money, plastic surgery, sunbathing.",
    capacity: 16,
    price_pppn: 1300
  },
  {
    name: "Windsors",
    description: "Come celebrate Meghan and Harry's wedding with us. We have a great place called Buckingham Palace.",
    capacity: 100,
    price_pppn: 10000
  }
  ]
photos = ["", "", "", "", "", ""]

photos.each do |url|
  families.each do |family|
    fam = Family.new(family)
    fam.user = user
    # fam.remote_photo_url = url
    fam.save!
  end
end


  # families.each do |family|
  #   fam = Family.new(family)
  #   fam.user = user
  #   fam.save!
  # end
puts "Finished!"
