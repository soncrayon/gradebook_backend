class AddCourseToExams < ActiveRecord::Migration[6.0]
  def change
    add_reference :exams, :course, null: false, foreign_key: true
  end
end
