# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "The Defenders of DC Comics."
Hero.create(
    name: "Bruce Wayne",
    super_name: "Batman"
)

Hero.create(
    name: "Clark Kent",
    super_name: "Superman"
)

Hero.create(
    name: "Diana Prince",
    super_name: "Wonder Woman"
)

Hero.create(
    name: "Barry Allen",
    super_name: "The Flash"
)

Hero.create(
    name: "Arthur Curry",
    super_name: "Aquaman"
)

puts "In brightest day, in blackest night,"
Power.create(
    name: "Ice Manipulation",
    description: "Ability to control and manipulate ice, creating ice structures, freezing objects, and generating icy blasts."
)
Power.create(
    name: "Fire Control",
    description: "Mastery over fire, enabling the generation and manipulation of flames, heat, and fire-based attacks."
)
Power.create(
    name: "Invisibility",
    description: "Capability to render oneself invisible to the naked eye, allowing for stealthy movement and evasion."
)
Power.create(
    name: "Shape-shifting",
    description: "Capacity to alter one's physical form, transforming into different shapes, sizes, and even species."
)

puts "No evil shall escape my sight."
HeroPower.create(
    power_id: 1,
    hero_id: 2,
    strength: "Average"
)
HeroPower.create(
    power_id: 1,
    hero_id: 1,
    strength: "Strong"
)
HeroPower.create(
    power_id: 2,
    hero_id: 5,
    strength: "Strong"
)
HeroPower.create(
    power_id: 2,
    hero_id: 4,
    strength: "Average"
)
HeroPower.create(
    power_id: 3,
    hero_id: 3,
    strength: "Strong"
)
HeroPower.create(
    power_id: 3,
    hero_id: 2,
    strength: "Average"
)
HeroPower.create(
    power_id: 4,
    hero_id: 2,
    strength: "Average"
)
HeroPower.create(
    power_id: 4,
    hero_id: 3,
    strength: "Weak"
)
HeroPower.create(
    power_id: 3,
    hero_id: 4,
    strength: "Weak"
)
HeroPower.create(
    power_id: 4,
    hero_id: 4,
    strength: "Strong"
)
HeroPower.create(
    power_id: 4,
    hero_id: 1,
    strength: "Average"
)

puts "Let the battle begin!"