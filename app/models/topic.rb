class Topic < ActiveRecord::Base
	has_many :questions
	has_many :follows, as: :followable
	validates :name, presence: true, uniqueness: true 
end
