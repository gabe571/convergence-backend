class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :reviewed_game
      t.string :game_name
      t.string :user_username
      t.integer :game_id
      t.integer :user_id
      t.integer :rating

      t.timestamps
    end
  end
end
