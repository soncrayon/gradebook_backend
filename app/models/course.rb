class Course < ApplicationRecord
  has_many :class_sessions
  has_many :assignments
  has_many :scores, through: :assignments
  has_many :levels, through: :class_sessions
  has_many :sections, through: :class_sessions
  has_many :students, through: :class_sessions
  has_many :teachers, through: :class_sessions
  has_many :periods, through: :class_sessions


  # def get_students_for_specific_period (period)
  #   block_jump_table = {

  #     1 => {

  #       1 => self.students.where(section_id: 1),
  #       2 => self.students.where(section_id: 2),
  #       3 => self.students.where(section_id: 3),
  #       4 => self.students.where(section_id: 4)

  #     }, 

  #     2 => {

  #       1 => self.students.where(section_id: 4),
  #       2 => self.students.where(section_id: 1),
  #       3 => self.students.where(section_id: 3),
  #       4 => self.students.where(section_id: 2)

  #     },

  #     3 => {

  #       1 => self.students.where(section_id: 3),
  #       2 => self.students.where(section_id: 4),
  #       3 => self.students.where(section_id: 1),
  #       4 => self.students.where(section_id: 2)

  #     },

  #     4 => {

  #       1 => self.students.where(section_id: 2),
  #       2 => self.students.where(section_id: 3),
  #       3 => self.students.where(section_id: 4),
  #       4 => self.students.where(section_id: 1)

  #     }

  #   }

  #   return block_jump_table[self.block][period]
  # end

  # def get_section_for_specific_period (period)
  #   self.get_students_for_specific_period(period).last.section.name
  # end

end
