class Appointment < ActiveRecord::Base
  validates :start_datetime, :mentor_id, presence: true

  belongs_to :user
  belongs_to :mentor, class_name: "User"
  belongs_to :student, class_name: "User"
  has_many :reviews
  has_one :review_of_mentor
  has_one :review_of_student

  def is_booked?
    if self.student_id == nil
      return false
    else
      return true
    end
  end

  def is_past?
    (Time.now - self.start_datetime).to_i > (self.duration.to_i * 60)
  end

  def is_owned_by?(user)
    self.student == user || self.mentor == user
  end

  def is_reviewable?(user)
    self.is_booked? && self.is_past? && self.is_owned_by?(user)
  end

  def already_reviewed_by?(user)
    self.review_of_mentor && user.type.downcase == 'student' || self.review_of_student && user.type.downcase == 'mentor'
  end


end
