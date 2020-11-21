class AddAssignmentToScores < ActiveRecord::Migration[6.0]
  def change
    add_reference :scores, :assignment, polymorphic: true, null: false
  end
end
