class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :cohort_name
      t.datetime :start_date
      t.timestamps null: false
    end
  end
end
