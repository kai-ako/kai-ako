class CreateEmoStates < ActiveRecord::Migration
  def change
    create_table :emo_states do |t|
      t.string :emotion
      t.string :comment

      t.timestamps null: false
    end
  end
end
