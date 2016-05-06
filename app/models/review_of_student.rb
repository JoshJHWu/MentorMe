class ReviewOfStudent < Review
  belongs_to :mentor
  belongs_to :appointment
  has_one :student, through: :appointment
end

# ReviewOfStudent.last.appointment.student
# ReviewOfStudent.all.appointment.student
# ReviewOfStudent.all.find_by( ReviewOfStudent.appointment.student == 1)
