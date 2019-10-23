# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |b|
        Blog.create!(
            title:  "Blog post #{b}",
            body: "Ut tincidunt at ipsum nec semper. Fusce in risus augue. Nullam ligula dolor, hendrerit vitae tempor et, interdum at augue. Aenean felis magna, eleifend eu facilisis ut, efficitur vel leo. Etiam non turpis et sapien pellentesque egestas. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec eu malesuada leo. Phasellus tempor vel neque sit amet bibendum. Suspendisse interdum justo purus, in lacinia justo sollicitudin a. Vivamus convallis volutpat odio, quis ultrices velit vestibulum et. Proin condimentum enim laoreet facilisis rhoncus. Integer vitae congue tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque laoreet arcu non neque vulputate ornare. "
        )
end
puts "10 blog posts created"

5.times do |s|
        Skill.create!(
            title: "Skill ##{s}",
            percent_utilized: s + 10
        )
end
puts "5 skills created"

9.times do |p|
    Portfolio.create!(
    title: "Portfolio title #{p}",
    subtitle: "Great service #{p}",
    body: "Ut dapibus consectetur dolor vel cursus. Aliquam fermentum ex molestie turpis faucibus, eget commodo nunc aliquam. Pellentesque volutpat eros ante, a vehicula urna lobortis quis. Aliquam nec consequat nibh. In lorem tellus, auctor posuere augue non, ullamcorper auctor velit. Vivamus congue sed mauris id malesuada. Cras blandit euismod risus, ut consequat felis faucibus id. Nulla eu purus massa. Integer laoreet dui velit, quis ullamcorper erat aliquam sit amet.",
    main_image: "https://via.placeholder.com/2000x1500/F39A9E.png",#"https://via.placeholder.com/300x250/fff.png",
    thumb_image: "https://via.placeholder.com/250x300/F39A9E.png"#"https://via.placeholder.com/50x50/fff.png"
    )
end
puts "9 portfolios items created"