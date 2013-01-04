class RelCategoryGage < ActiveRecord::Base
  belongs_to :gage
  belongs_to :category
  
  attr_accessible :category_id, :deleted, :gage_id
end
