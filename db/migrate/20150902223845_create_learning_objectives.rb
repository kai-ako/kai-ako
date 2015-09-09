class CreateLearningObjectives < ActiveRecord::Migration
  def change
    create_table :learning_objectives do |t|
      t.string :title
      t.text :description
      t.datetime :completed_at
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
