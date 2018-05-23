# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating families..."

Family.destroy_all
User.destroy_all
Family.destroy_all

user = User.create(first_name: "A", last_name: "Y", email: "a@hotmail.fr", password: "1234")
families = [
  {
    name: "The Cohens",
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
    name: "Malcolm's family",
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
    name: "The Kardashians",
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

cohens_url = "http://imagizer.imageshack.us/a/img922/4376/FQClhc.jpg"
simpsons_url = "https://img00.deviantart.net/68c1/i/2010/269/c/2/full_simpson_family_by_tomsimpson96-d2zi35b.jpg"
malcolm_url = "https://consequenceofsound.files.wordpress.com/2016/12/screen-shot-2016-12-18-at-4-16-07-pm.png"
addams_url = "http://images.mentalfloss.com/sites/default/files/styles/mf_image_16x9/public/addams-family-poster.jpeg?itok=sokBQWAf&resize=1100x619"
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
