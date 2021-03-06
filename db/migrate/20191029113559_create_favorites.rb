class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: { to_table: :microposts }
      t.references :micropost, foreign_key: { to_table: :users }

      t.timestamps
      
      t.index [:user_id, :micropost_id], unique: true
    end
  end
end
