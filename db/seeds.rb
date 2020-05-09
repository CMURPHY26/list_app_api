# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

List.create([
    {
        name: 'Grocery List',
        category: 'Food'
    },
    {
        name: 'Favorite Songs',
        category: 'Music'
    },
    {
        name: 'Favorite Beer',
        category: 'Alcohol'
    },
    {
        name: 'Marijuana Strains',
        category: 'Weed'
    },
    {
        name: 'Favorite Books',
        category: 'Books'
    },
    {
        name: 'Favorite Dog Breeds',
        category: 'Dogs'
    }
])

10.times do 
    ListItem.create([
        {
            name: Faker::Food.ingredient,
            description: "Amount Needed: #{Faker::Food.measurement}",
            is_completed: false,
            priority: rand(1..10),
            list_id: 1
        },
    ])
end

10.times do 
    ListItem.create([
        {
            name:Faker::Music::GratefulDead.song,
            description: "Written by #{Faker::Music::GratefulDead.player}",
            is_completed: false,
            priority: rand(1..10),
            list_id: 2
        },
    ])
end

10.times do 
    ListItem.create([
        {
            name:Faker::Beer.name,
            description: "Made with #{Faker::Beer.hop} hops",
            is_completed: false,
            priority: rand(1..10),
            list_id: 3
        },
    ])
end

10.times do 
    ListItem.create([
        {
            name:Faker::Cannabis.strain,
            description: "#{Faker::Cannabis.type} strain with #{Faker::Cannabis.terpene} terpenes",
            is_completed: false,
            priority: rand(1..10),
            list_id: 4
        },
    ])
end

10.times do 
    ListItem.create([
        {
            name:Faker::Book.title,
            description: "Author: #{Faker::Book.genre}",
            is_completed: false,
            priority: rand(1..10),
            list_id: 5
        },
    ])
end

10.times do 
    ListItem.create([
        {
            name:Faker::Creature::Dog.breed,
            description: "Gender: #{Faker::Creature::Dog.gender}",
            is_completed: false,
            priority: rand(1..10),
            list_id: 6
        },
    ])
end