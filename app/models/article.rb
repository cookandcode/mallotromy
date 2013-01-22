class Article < ActiveRecord::Base
  attr_accessible :admin_user_id, :content, :title

  belongs_to :admin_user
end
