class Appointment < ActiveRecord::Base
  validates :start_time, :mentor_id, presence: true

  belongs_to :user
  belongs_to :mentor, class_name: "User"
  belongs_to :student, class_name: "User"

  def is_booked?
    if self.student_id == nil
      return false
    else
      return true
    end
  end
end
