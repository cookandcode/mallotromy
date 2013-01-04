class CreateRelCategoryGages < ActiveRecord::Migration
  def change
    create_table :rel_category_gages do |t|
      t.integer :gage_id
      t.integer :category_id
      t.integer :deleted

      t.timestamps
    end
  end
end
