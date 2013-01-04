class Difficulty < ActiveRecord::Base
  attr_accessible :deleted, :description, :level, :name, :photo

  mount_uploader :photo, PhotoUploader 
end
