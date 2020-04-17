class Api::V1::TopicQuestionAnswersController < ApplicationController

	def get_topicwise_questions_answers
		@records = Topic.includes(questions: :answers)	
	end

	def get_user_topic_followers_count
		@users = User.all
		@topics = Topic.all
	end

end
