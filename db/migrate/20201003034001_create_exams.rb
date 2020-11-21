class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.string :name
      t.text :exam_prompt

      t.timestamps
    end
  end
end
