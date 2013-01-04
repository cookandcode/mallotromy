class CreateGages < ActiveRecord::Migration
  def change
    create_table :gages do |t|
      t.string :name
      t.string :description
      t.string :photo
      t.integer :deleted

      t.timestamps
    end
  end
end
