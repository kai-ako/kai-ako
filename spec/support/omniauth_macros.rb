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
end
