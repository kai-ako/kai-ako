class EmoState < ActiveRecord::Base

  belongs_to :user
  validates :emotion, presence: true
end
