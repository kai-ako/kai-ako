class User < ActiveRecord::Base

  has_many :emo_states

  def self.find_or_create_from_omniauth(auth)
    user = User.where({:uid => auth[:uid], :provider => auth[:provider]}).first_or_create

    info = auth['extra']['raw_info']
    user.uid = auth['uid']
    user.provider = auth['provider']
    user.name = info["name"]
    user.github_token = auth["credentials"]["token"]

    user.save if user.changed?
    user
  end
end
