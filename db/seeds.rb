# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |x|
  Blog.create!(
    title: "My blog post #{x}",
     body: "This action is now displaying the parameters for the article that are coming in from the form. However, this isn't really all that helpful.
      Yes, you can see the parameters but nothing in particular is being done with them."
  )
end

puts "10 blogs are added"

5.times do |skill|
  Skill.create!(
    title: "Ruby on rails #{skill}",
    percent_utlized: 40
  )
end

puts "5 skills are added"

9.times do |ports|
  Portfolio.create!(
    title: "My portfolio #{ports}",
    subtitle: "Creating the Article model",
    body:"Models in Rails use a singular name, and their corresponding database tables use a plural name. Rails provides a generator for creating models, which most Rails developers
    tend to use when creating new models. To create the new model, run this command in your terminal:",
    main_image:"https://placehold.co/600x400",
    thumb_image: "https://placehold.co/350X200",
  )
end
