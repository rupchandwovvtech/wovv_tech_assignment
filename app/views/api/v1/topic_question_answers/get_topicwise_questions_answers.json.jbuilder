json.topics @records.each do |topic|
	json.id topic.id
	json.name topic.name
	json.questions topic.questions.each do |question|
		json.id question.id
		json.title question.title
		json.user question.user.email
		json.answers question.answers.each do |answer|
			json.answer answer.ans
			json.user answer.try(:user).try(:email)
		end
	end
end