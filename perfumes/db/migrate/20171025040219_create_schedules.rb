class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :day
      t.time :hour
      t.string :place

      t.timestamps
    end
  end
end
