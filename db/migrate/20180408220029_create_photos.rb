class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.integer :food_id

      t.timestamps
    end

    add_index :photos, [:user_id, :food_id]
    add_index :photos, :food_id
  end
end
