class ClassSession < ApplicationRecord
  belongs_to :teacher
  belongs_to :level
  belongs_to :course
  belongs_to :period
  belongs_to :section
  has_many :student_class_sessions
  has_many :students, through: :student_class_sessions
end
