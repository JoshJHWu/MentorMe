class ReviewOfStudent < Review
  belongs_to :mentor
  belongs_to :appointment
  has_one :student, through: :appointment
end

