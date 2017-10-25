class CreateAccountDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :account_details do |t|

      t.timestamps
    end
  end
end
