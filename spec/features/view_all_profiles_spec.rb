require 'rails_helper'

RSpec.feature "view all profiles" do

  before do
    visit view_profile_path
  end

   it "views page" do
    expect(page.body).to have_css("li")
  end
end
