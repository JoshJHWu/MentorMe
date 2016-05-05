class Student < User
  has_many :reviews
  has_many :of_mentor
end
