class CreateShelves < ActiveRecord::Migration[5.1]
  def change
    create_table :shelves do |t|
      t.string :shelf_name
      t.references :shop, foreign_key: true
      t.timestamps
    end
  end
end
