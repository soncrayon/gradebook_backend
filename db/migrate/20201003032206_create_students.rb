class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :section, null: false, foreign_key: true
      t.belongs_to :level, null: false, foreign_key: true

      t.timestamps
    end
  end
end
