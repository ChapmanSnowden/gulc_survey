post '/answers' do
  params.each do |question, answer|
    @answer = Answer.create(question_id: question, choice_id: answer, user_id: session[:user_id])
  end
  
  CompletedSurvey.create(user_id: session[:user_id], survey_id: @answer.question.survey.id)
  
  redirect '/dashboard'
end

get '/surveys/:id/results' do |id|
  if session[:user_id]
    @survey = Survey.find(id)
    @num_takers = CompletedSurvey.where(survey_id: id).count
    @questions = @survey.questions

    erb :results
  else 
    redirect '/'
  end
end
