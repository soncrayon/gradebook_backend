class CreateClassSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :class_sessions do |t|
      t.belongs_to :teacher, null: false, foreign_key: true
      t.belongs_to :level, null: false, foreign_key: true
      t.belongs_to :course, null: false, foreign_key: true
      t.belongs_to :period, null: false, foreign_key: true
      t.belongs_to :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
