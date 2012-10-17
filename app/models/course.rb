class Course < ActiveRecord::Base
  attr_accessible :name, :topic_ids
  has_many :relationships
  has_many :topics, through: :relationships
end
