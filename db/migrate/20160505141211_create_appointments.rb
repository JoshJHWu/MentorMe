class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :start_date, null: false
      t.datetime :start_time, null: false
      t.string :duration, null: false
      t.integer :student_id
      t.integer :mentor_id, null: false

      t.timestamps null: false
    end
  end
end
