# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating families..."

Booking.destroy_all
Family.destroy_all
User.destroy_all


user = User.create(first_name: "Alicia", last_name: "Yahiaoui", email: "a@hotmail.fr", password: "1234")
families = [
  {
    name: "Cohens",
    description: "We use a red phone like the president of the united states, yes we are that cool.
  I am an ophthalmologist, my husband is a General Praticien, you are safe with us.
  We are happy to welcome you for Shabbat every friday nights I’ll make the best couscous in the world (according to my son Pierre).
  We can host 2 guests for 80 euros per person.",
    capacity: 2,
    price_pppn: 80
  },
  {
    name: "Simpsons",
    description: "We are Homer, Marge, Bart, Lisa and Maggie.
    Family dinner with us is more than cool. We only eat donuts and watch TV.
    2 persons can join us for dinner! We will only charge you 10€ per person (please note that access to the TV remote is not included).",
    capacity: 2,
    price_pppn: 10
  },
  {
    name: "Malcolm",
    description: "We have 2 genius kids and a dumb one. But we are nice. Come and have some fun.",
    capacity: 3,
    price_pppn: 50
  },
  {
    name: "Addams",
    description: "Are you creepy? Family of weirdos. Come shake the Thing's hand. We can host 2 lonely souls to stay with us. We provide dinner and accomodation for 150€ per person.",
    capacity: 2,
    price_pppn: 150
  },
  {
    name: "Kardashians",
    description: "We are the most fucked up family in the world. Your dinner with us will end up on every social media you may know.
  We love sharing point of views on make up, sex tapes and expensive things.
  Nobody cooks at home, we only eat protein bars.
  We can have up to 30 guests, the price is 1 300€ a night. ",
    capacity: 30,
    price_pppn: 1300
  },
  {
    name: "Windsors",
    description: "We are probably the most famous family in the world, join us for a 17 courses traditional royal dinner.
    Our grandmother is kind of not kidding with table etiquette. We live in a great place called Buckingham Palace and can host up to 600 people.
    Come celebrate Meghan and Harry's wedding with us! ",
    capacity: 600,
    price_pppn: 2000
  }
  ]

cohens_url = "https://imageshack.com/a/img921/5817/XRjOX7.jpg"
simpsons_url = "https://imageshack.com/a/img921/4667/PS7xX2.jpg"
malcolm_url = "https://images.wallpaperscraft.com/image/malcolm_in_the_middle_malcolm_hal_lois_francis_reese_dewey_97064_1600x1200.jpg"
addams_url = "https://imageshack.com/a/img922/9825/MLp9UK.png"
kardashians_url = "https://akns-images.eonline.com/eol_images/Entire_Site/2017815/rs_1024x575-170915114530-back4.jpg?fit=inside|900:auto&output-quality=90"
windsors_url = "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hbz-prince-harry-meghan-markle-wedding-portrait2-1526914591.jpg?crop=1xw:1xh;center,top&resize=768:*"
urls = [cohens_url, simpsons_url , malcolm_url, addams_url, kardashians_url, windsors_url]

families.each_with_index do |family, index|
  fam = Family.new(family)
  fam.user = user
  fam.remote_photo_url = urls[index]
  fam.save!
end

puts "Finished!"
