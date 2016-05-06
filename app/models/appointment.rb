class Appointment < ActiveRecord::Base
  validates :start_datetime, :mentor_id, presence: true

  belongs_to :user
  belongs_to :mentor, class_name: "User"
  belongs_to :student, class_name: "User"
  has_many :appointment_topics
  has_many :topics, through: :appointment_topics

  def is_booked?
    if self.student_id == nil
      return false
    else
      return true
    end
  end
end
