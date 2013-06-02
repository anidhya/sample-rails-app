class Article < ActiveRecord::Base
  attr_accessible :content, :name, :status, :title, :user_id

  belongs_to :user
end
