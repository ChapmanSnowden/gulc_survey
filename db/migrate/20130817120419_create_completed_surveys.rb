class CreateCompletedSurveys < ActiveRecord::Migration
  def change
    create_table :surveys_taken do |t|
      t.belongs_to :user
      t.belongs_to :survey
    end
  end
end


