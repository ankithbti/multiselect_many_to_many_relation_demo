class Topic < ActiveRecord::Base
  attr_accessible :name
  has_many :relationships
  has_many :courses, through: :relationships
end
