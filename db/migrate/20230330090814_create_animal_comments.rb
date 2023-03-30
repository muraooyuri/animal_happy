class CreateAnimalComments < ActiveRecord::Migration[6.1]
  def change
    create_table :animal_comments do |t|

      t.timestamps
    end
  end
end
