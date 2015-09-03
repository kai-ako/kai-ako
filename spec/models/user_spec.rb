xrequire 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Updates profile information' do
    it' Updates Names' do
      i = User.create(:first_name => "John", :last_name => "Smith")

      expect(i.first_name).to eq("John")
      expect(i.last_name).to eq("Smith")

    end
  end
end
