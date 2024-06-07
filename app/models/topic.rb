class Topic < ApplicationRecord
  validates_presence_of :title
  #not clear
  has_many :blogs
end
