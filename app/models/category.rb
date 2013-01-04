class Category < ActiveRecord::Base
  has_many :rel_category_gages
  has_many :gages, :through => :rel_category_gages


  attr_accessible :deleted, :description, :name, :photo

  mount_uploader :photo, PhotoUploader 
end
