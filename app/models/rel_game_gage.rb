class RelGameGage < ActiveRecord::Base
  belongs_to :gage
  belongs_to :game


  attr_accessible :deleted, :gage_id, :game_id
end
