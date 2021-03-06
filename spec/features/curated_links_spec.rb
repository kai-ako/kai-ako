require 'rails_helper'

 feature 'Page has content' do



  it 'form' do
     visit curated_links_path
     page.has_css?('new_curated_link')
    fill_in('Link', with: 'http://google.com')
    fill_in('Description', with: 'The best search engine')
    click_button('Submit')


  end
  it "persists the link field" do
    visit curated_links_path
    fill_in('Link', with: 'http://google.com')
    click_button('Submit')
    expect(page).to have_content('http://google.com')

  end
 end
