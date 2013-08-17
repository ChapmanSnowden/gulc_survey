post '/answers' do
  params.each do |question, answer|
    Answer.create(question_id: question, choice_id: answer, user_id: session[:user_id])
  end
  redirect '/dashboard'
end
