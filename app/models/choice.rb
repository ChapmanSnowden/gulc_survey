class Choice < ActiveRecord::Base
  belongs_to :question

  def votes
    Answer.where(choice_id: id).count
  end
end
