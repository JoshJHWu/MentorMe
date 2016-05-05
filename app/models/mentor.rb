class Mentor < User
  has_many :reviews
  has_many :reviews_of_student
end
