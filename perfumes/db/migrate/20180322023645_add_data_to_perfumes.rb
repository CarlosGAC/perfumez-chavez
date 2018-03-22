class AddDataToPerfumes < ActiveRecord::Migration[5.0]
  def change
    add_column :perfumes, :public_target, :integer
    add_column :perfumes, :classification, :integer
    add_column :perfumes, :category, :integer
    add_column :perfumes, :presentation, :integer
    add_column :perfumes, :visibility, :integer
  end
end
