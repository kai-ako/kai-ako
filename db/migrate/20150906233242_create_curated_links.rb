class CreateCuratedLinks < ActiveRecord::Migration
  def change
    create_table :curated_links do |t|
      t.string :link
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
