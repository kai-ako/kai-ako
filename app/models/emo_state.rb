class EmoState < ActiveRecord::Base
  validates :emotion, presence: true
end
