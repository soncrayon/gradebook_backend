class Student < ApplicationRecord
    belongs_to :level
    belongs_to :section
    has_many :scores
    has_many :assignments, through: :scores
    has_many :student_class_sessions
    has_many :class_sessions, through: :student_class_sessions
    has_many :courses, through: :class_sessions
    has_many :periods, through: :class_sessions
    has_many :teachers, through: :class_sessions

    def get_student_schedule
        self.class_sessions.each { |cs| puts cs.course.name + " from " + cs.period.start_time + " to " + cs.period.end_time }
    end
end
