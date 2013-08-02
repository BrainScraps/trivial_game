class Question < ActiveRecord::Base
  has_many :answers
  attr_accessible :content

  validates_presence_of :content
end
