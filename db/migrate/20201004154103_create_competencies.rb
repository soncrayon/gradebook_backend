class CreateCompetencies < ActiveRecord::Migration[6.0]
  def change
    create_table :competencies do |t|
      t.string :description
      t.belongs_to :level, null: false, foreign_key: true

      t.timestamps
    end
  end
end
