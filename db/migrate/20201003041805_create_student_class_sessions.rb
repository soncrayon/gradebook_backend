class CreateStudentClassSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :student_class_sessions do |t|
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :class_session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
