require 'rails_helper'

RSpec.describe 'As a user' do
  scenario 'I can see read links' do
    HotLink.create(url:"http://turing.io")

    visit root_path

    expect(page).to have_text("http://turing.io")
  end
end
