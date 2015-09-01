require 'rails_helper'
describe 'User can log emotional state' do
  before do
    visit('/')
  end
  it 'user can see emo panel' do
    expect(page).to have_css('#emo-state')
  end

  it 'user can see emotion' do
    expect(page).to have_css('#emo-state img')
  end

  it 'user can see submit button' do
    expect(page).to have_selector('.emo-btn', text: 'Submit')
  end

  it 'user can see input text' do
    expect(page).to have_css('#emo-state text_field')
  end


  it 'user can choose emotion' do
    # choose('emo')
    # expect(page).to have_css('')
  end

  it 'user can type in message' do

  end



  it 'user can see a list of past emotions' do

  end
end
