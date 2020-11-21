class Period < ApplicationRecord
    has_many :class_sessions
    has_many :students, through: :class_sessions
    has_many :teachers, through: :class_sessions
    has_many :courses, through: :class_sessions
end
