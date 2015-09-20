class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :cohort_Name
      t.string :start_Date
      t.string :end_Date
      
      t.timestamps null: false
    end
  end
end
