class CreateRelGameGages < ActiveRecord::Migration
  def change
    create_table :rel_game_gages do |t|
      t.integer :gage_id
      t.integer :game_id
      t.integer :deleted

      t.timestamps
    end
  end
end
