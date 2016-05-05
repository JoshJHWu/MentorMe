class Appointment < ActiveRecord::Base
  validates :start_time, :mentor_id, presence: true

  belongs_to :user
  belongs_to :mentor, class_name: "User"
  belongs_to :student, class_name: "User"

end
