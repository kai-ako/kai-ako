class AddIndexToUserIdAtEmoStates < ActiveRecord::Migration
  def change
    add_index :emo_states, :user_id
  end
end
