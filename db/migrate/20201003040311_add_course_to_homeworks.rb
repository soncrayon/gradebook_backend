class AddCourseToHomeworks < ActiveRecord::Migration[6.0]
  def change
    add_reference :homeworks, :course, null: false, foreign_key: true
  end
end
