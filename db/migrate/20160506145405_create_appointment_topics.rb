class CreateAppointmentTopics < ActiveRecord::Migration
  def change
    create_table :appointment_topics do |t|
      t.integer :topic_id, null: false
      t.integer :appointment_id, null: false

      t.timestamps null: false
    end
  end
end
