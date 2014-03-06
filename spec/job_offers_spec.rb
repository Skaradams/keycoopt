require 'spec_helper'

feature 'Job offers' do
  before(:each) do
    visit root_path
  end

  scenario 'Visit home page' do
    expect(page).to have_content("Recommender quelqu'un")
  end

  scenario 'Visit next offer' do
    click_link "Offre suivante"
    expect(page).to have_content("Recommender quelqu'un")
  end

  scenario 'Visit recommendation form' do
    click_link "Recommender quelqu'un"
    expect(page).to have_content("Retour à l'offre")
  end
end