json.user_followers @users.each do |user|
	json.email user.email
	json.follower_user_count user.follows.count
end
json.topic_followers @topics.each do |topic|
	json.topic_name topic.name
	json.follower_topic_count topic.follows.count
end