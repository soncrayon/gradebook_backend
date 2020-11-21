class CreateLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :levels do |t|
      t.integer :year
      t.string :exam

      t.timestamps
    end
  end
end
