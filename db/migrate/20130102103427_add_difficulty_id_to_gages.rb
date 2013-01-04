class AddDifficultyIdToGages < ActiveRecord::Migration
  def change
    add_column :gages, :difficulty_id, :integer
  end
end
