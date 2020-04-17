class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  validates :ans,:user_id,:question_id, presence: true
end
