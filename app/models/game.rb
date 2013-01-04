class Game < ActiveRecord::Base
  has_many :rel_game_gages
  has_many :gages, :through => :rel_game_gages


  attr_accessible :deleted, :description, :name, :photo

  mount_uploader :photo, PhotoUploader 
end
