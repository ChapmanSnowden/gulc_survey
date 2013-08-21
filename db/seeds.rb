user1 = User.new(name: 'User1', email: 'user1@emaill.com')
user1.password = 'Password1'
user1.save

user2 = User.new(name: 'User2', email: 'user2@emaill.com')
user2.password = 'Password1'
user2.save

user3 = User.new(name: 'User3', email: 'user3@emaill.com')
user3.password = 'Password1'
user3.save

survey1 = Survey.create(name: 'Survey1', user_id: user1.id)
question1 = Question.create(prompt: 'question 1 for survey 1', survey_id: survey1.id)
question2 = Question.create(prompt: 'question 2 for survey 1', survey_id: survey1.id)
question3 = Question.create(prompt: 'question 3 for survey 1', survey_id: survey1.id)
choice1q1 = Choice.create(content: 'true', question_id: question1.id)
choice2q1 = Choice.create(content: 'false', question_id: question1.id)
choice1q2 = Choice.create(content: 'true', question_id: question2.id)
choice2q2 = Choice.create(content: 'false', question_id: question2.id)
choice1q3 = Choice.create(content: 'true', question_id: question3.id)
choice2q3 = Choice.create(content: 'false', question_id: question3.id)

survey2 = Survey.create(name: 'Survey2', user_id: user2.id)
question4 = Question.create(prompt: 'question 1 for survey 2', survey_id: survey2.id)
question5 = Question.create(prompt: 'question 2 for survey 2', survey_id: survey2.id)
question6 = Question.create(prompt: 'question 3 for survey 2', survey_id: survey2.id)
choice1q4 = Choice.create(content: 'true', question_id: question4.id)
choice2q4 = Choice.create(content: 'false', question_id: question4.id)
choice1q5 = Choice.create(content: 'true', question_id: question5.id)
choice2q5 = Choice.create(content: 'false', question_id: question5.id)
choice1q6 = Choice.create(content: 'true', question_id: question6.id)
choice2q6 = Choice.create(content: 'false', question_id: question6.id)


survey3 = Survey.create(name: 'Survey3', user_id: user2.id)
question7 = Question.create(prompt: 'question 1 for survey 3', survey_id: survey3.id)
question8 = Question.create(prompt: 'question 2 for survey 3', survey_id: survey3.id)
question9 = Question.create(prompt: 'question 3 for survey 3', survey_id: survey3.id)
choice1q7 = Choice.create(content: 'true', question_id: question7.id)
choice2q7 = Choice.create(content: 'false', question_id: question7.id)
choice1q8 = Choice.create(content: 'true', question_id: question8.id)
choice2q8 = Choice.create(content: 'false', question_id: question8.id)
choice1q9 = Choice.create(content: 'true', question_id: question9.id)
choice2q9 = Choice.create(content: 'false', question_id: question9.id)