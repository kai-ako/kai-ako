module OmniauthMacros
	def mock_auth_hash
		OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
			'provider' => 'github',
			'uid' => '123545',
			'extra' => {
				'raw_info' => {
					'name' => "Piet"
				}
			},
			'credentials' => {
				'token' => 'mock_token',
				'secret' => 'mock_secret'
			}
		})
	end

	def login (user=nil)
		user ||= User.find_or_create_by(name: 'Piet', uid: '12345', provider: 'github')
		@user = user
		visit root_path
		mock_auth_hash
		click_on 'Log In with Github'
	end

end
