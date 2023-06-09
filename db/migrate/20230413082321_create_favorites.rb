class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :animal_id
      t.timestamps
      t.index [:user_id, :animal_id], unique: true
    end
  end
end
