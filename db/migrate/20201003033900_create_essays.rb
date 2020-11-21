class CreateEssays < ActiveRecord::Migration[6.0]
  def change
    create_table :essays do |t|
      t.string :name
      t.text :prompt

      t.timestamps
    end
  end
end
