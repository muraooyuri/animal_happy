class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      
      t.timestamps
    end
  end
end
