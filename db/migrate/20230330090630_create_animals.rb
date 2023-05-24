class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :title
      t.integer :user_id
      t.text :body
      t.timestamps
    end
  end
end
