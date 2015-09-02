class CreateLearningObjectives < ActiveRecord::Migration
  def change
    create_table :learning_objectives do |t|
      t.string :title
      t.text :description
      t.integer :student_id
      t.datetime :completed_at
      t.timestamps null: false
    end
  end
end
