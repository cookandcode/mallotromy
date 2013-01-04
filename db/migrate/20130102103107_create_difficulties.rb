class CreateDifficulties < ActiveRecord::Migration
  def change
    create_table :difficulties do |t|
      t.string :name
      t.integer :level
      t.string :description
      t.string :photo
      t.integer :deleted

      t.timestamps
    end
  end
end
