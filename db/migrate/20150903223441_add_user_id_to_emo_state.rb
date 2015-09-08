class AddUserIdToEmoState < ActiveRecord::Migration
  change_table :emo_states do |t|
    t.belongs_to :user #####


  end
end
