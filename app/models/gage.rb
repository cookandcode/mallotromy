class Gage < ActiveRecord::Base
  belongs_to :difficulty
  
  has_many :rel_category_gages
  has_many :categories, :through => :rel_category_gages

  has_many :rel_game_gages
  has_many :games, :through => :rel_game_gages

  attr_accessible :deleted, :description, :name, :photo, :difficulty_id, :category_ids

  mount_uploader :photo, PhotoUploader 
end
