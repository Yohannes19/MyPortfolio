3.times do |t|
  Topic.create!(
    title: "Topic #{t}"
  )
end

10.times do |x|
  Blog.create!(
    title: "My blog post #{x}",
     body: "This action is now displaying the parameters for the article that are coming in from the form. However, this isn't really all that helpful.
      Yes, you can see the parameters but nothing in particular is being done with them." ,
    topic_id: Topic.last.id
  )
end

puts  "10 blogs are added"

5.times do |skill|
  Skill.create!(
    title: "Ruby on rails #{skill}",
    percent_utlized: 40
  )
end

puts "5 skills are added"

8.times do |ports|
  Portfolio.create!(
    title: "My portfolio #{ports}",
    subtitle: "Ruby on rails",
    body: "Models in Rails use a singular name, and their corresponding database tables use a plural name. Rails provides a generator for creating models, which most Rails developers
    tend to use when creating new models. To create the new model, run this command in your terminal:",
    main_image: "https://placehold.co/600x400" ,
    thumb_image: "https://placehold.co/350X200" ,
  )
end
1.times do |ports|
  Portfolio.create!(
    title: "My portfolio #{ports}",
    subtitle: "Angular",
    body:"Models in Rails use a singular name, and their corresponding database tables use a plural name. Rails provides a generator for creating models, which most Rails developers
    tend to use when creating new models. To create the new model, run this command in your terminal:",
    main_image:"https://placehold.co/600x400",
    thumb_image: "https://placehold.co/350X200",
    )
end

puts "Portoflios Add"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end