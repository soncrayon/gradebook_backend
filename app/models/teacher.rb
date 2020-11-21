class Teacher < ApplicationRecord
    has_many :class_sessions
    has_many :students, through: :class_sessions
    has_many :sections, through: :class_sessions
    has_many :periods, through: :class_sessions
    has_many :courses, through: :class_sessions
    has_many :levels, through: :class_sessions
end
