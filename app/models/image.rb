class Image < ActiveRecord::Base
  has_and_belongs_to_many :tags
  attr_accessible :description, :title, :url
end
