class CreateTables < ActiveRecord::Migration
  def change 
    create_table :users do |t|
      t.string :name, :email, :password_hash
      
      t.timestamps
    end

    create_table :surveys do |t|
      t.belongs_to :user
      t.string :name

      t.timestamps
    end

    create_table :questions do |t|
      t.belongs_to :survey
      t.string :prompt

      t.timestamps
    end

    create_table :choices do |t|
      t.belongs_to :question
      t.string :content

      t.timestamps
    end
  end
end
