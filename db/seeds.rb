User.destroy_all
Game.destroy_all
Review.destroy_all



user = User.create(username: "Gabriel", password: "12345")

games = [
    {name: "Game One" }
]
games.each {|games| Game.create(games)}


reviews = [
    {reviewed_game: "review content", game_name: Game.all.sample.name, game_id: Game.all.sample.id, user_id: User.all.sample.id, user_username: User.all.sample.username, rating: 5 }
]
reviews.each {|review| Review.create(review)}

puts 'SEEDS SEEDED!'