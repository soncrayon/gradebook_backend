class Section < ApplicationRecord
    has_many :class_sessions
    has_many :students
    has_many :teachers, through: :class_sessions
    has_many :periods, through: :class_sessions
    has_many :courses, through: :class_sessions
    has_many :levels, through: :class_sessions

    def section_whereabouts (level_number, period_number)
        self.class_sessions.where(level_id: level_number).find_by(period_id: period_number).course
    end
    
end
