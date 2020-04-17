class HomeController < ApplicationController
  def index
  	@topics = Topic.includes(:questions)
  end

  def show
  	@question = Question.find(params[:id])
  	@topic = @question.topic
  	@answers = @question.answers
  	@is_user_follow = Follow.find_by(user_id: current_user.try(:id), followable_type: "User", followable_id: @question.user.id)
  	@is_topic_follow = Follow.find_by(user_id: current_user.try(:id), followable_type: "Topic", followable_id: @topic.id) 
  end
end
