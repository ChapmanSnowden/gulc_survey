#CODE REVEIW: Add validation to all models

class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :choice
  belongs_to :user
end
