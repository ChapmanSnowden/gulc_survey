class CreateAnswersTable < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs :question_id
      t.integer :choice_id
      t.integer :user_id
    end
  end
end
