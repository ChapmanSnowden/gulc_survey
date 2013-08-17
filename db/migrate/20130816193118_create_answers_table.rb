class CreateAnswersTable < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :choice_id
      t.belongs_to :user_id
    end
  end
end
