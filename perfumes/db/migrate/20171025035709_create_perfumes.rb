class CreatePerfumes < ActiveRecord::Migration[5.0]
  def change
    create_table :perfumes do |t|
      t.string :name
      t.float :buy_price
      t.float :retail_price
      t.integer :stock

      t.timestamps
    end
  end
end
