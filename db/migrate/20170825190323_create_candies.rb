class CreateCandies < ActiveRecord::Migration[5.1]
  def change
    create_table :candies do |t|
      t.string :candy_name
      t.boolean :is_shelved, default: false
      t.references :shelf, foreign_key: true, default: nil, optional: true
      t.references :shop, foreign_key: true
      t.timestamps
    end
  end
end
