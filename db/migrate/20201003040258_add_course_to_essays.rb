class AddCourseToEssays < ActiveRecord::Migration[6.0]
  def change
    add_reference :essays, :course, null: false, foreign_key: true
  end
end
