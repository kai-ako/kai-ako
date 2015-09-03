class CreateCuratedLinks < ActiveRecord::Migration
  def change
    create_table :curated_links do |t|
      t.string :url
      t.string :title
      t.string :description
      t.integer :author_id
      t.timestamps null: false
    end
  end
end
