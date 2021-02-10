User.destroy_all
Game.destroy_all
Review.destroy_all



user = User.create(username: "Gabriel", password: "12345", avatar: '../avatar.png'),
    {username: "Daniel", password: "3456", avatar:'../avatar.png'} ,
    {username: "April", password: "4567", avatar: '../avatar.png'}

games = [
    {name: "Game One" }
]
games.each {|games| Game.create(games)}


reviews = [
    {reviewed_game: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", game_name: Game.all.sample.name, game_id: Game.all.sample.id, user_id: User.all.sample.id, user_username: User.all.sample.username, rating: 5},
    {reviewed_game: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", game_name: Game.all.sample.name, game_id: Game.all.sample.id, user_id: User.all.sample.id, user_username: User.all.sample.username, rating: 3},
    {reviewed_game: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", game_name: Game.all.sample.name, game_id: Game.all.sample.id, user_id: User.all.sample.id, user_username: User.all.sample.username, rating: 1}
]
reviews.each {|review| Review.create(review)}

puts 'SEEDS SEEDED!'