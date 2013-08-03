class Answer < ActiveRecord::Base
  belongs_to :question

  attr_accessible :content, :is_correct, :question_id

  validates_presence_of :content, :question_id

end
