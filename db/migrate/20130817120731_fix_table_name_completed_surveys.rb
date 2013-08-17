class FixTableNameCompletedSurveys < ActiveRecord::Migration
  def change
    rename_table :surveys_taken, :completed_surveys 
  end
end
