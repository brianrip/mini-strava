require 'rails_helper'
include Omnistub
RSpec.feature "AthleteLogsInWithStrava", type: :feature do
  before(:each) do
    stub_athlete
  end
  scenario 'athlete visits root url' do
    visit '/'
    expect(page.status_code).to eq(200)
    find("#login").click
    expect(page).to have_content "Discover new climbing locations"
    expect(page).to have_content "Logout"
    expect(current_path).to eq "/dashboard"
  end

end
