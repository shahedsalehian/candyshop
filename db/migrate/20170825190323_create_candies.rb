class CreateCandies < ActiveRecord::Migration[5.1]
  def change
    create_table :candies do |t|
      t.string :candy_name
      t.references :shelf, foreign_key: true
      t.references :shop, foreign_key: true
      t.timestamps
    end
  end
end
