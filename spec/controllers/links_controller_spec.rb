require 'rails_helper'

describe LinksController, type: :controller do

  it 'saves a new link if valid' do
    expect {
      post :create, link: {
        url: 'http://google.com',
        title: 'my new link',
        description: 'awesome description'
      }
    }.to change { Link.count }

    expect(Link.last.url).to eq('http://google.com')
  end

  it 'does not save link if invalid'

end
