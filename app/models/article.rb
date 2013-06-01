class Article < ActiveRecord::Base
  attr_accessible :content, :name, :status, :title
end
