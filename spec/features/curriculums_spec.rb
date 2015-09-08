require 'rails_helper'

RSpec.feature "Curriculums", type: :feature do
   let(:nav) do
   	visit "/"
   	click_link('Curriculum')
   end

   it "has a curriculum link on the home page" do
	   visit "/"
	   expect(page.body).to have_content("Curriculum")
	   # expect("Curriculum").to have_css("a")
   end

   before(:each) do
   	nav
   end
   it "has the heading 'Curriculum Tree'" do
   	expect(page.body).to have_content("Curriculum Tree")
   end

   it "has a details element on the page" do
   	expect(page.body).to have_css("#{}details_tree")
   end
end


