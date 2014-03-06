require 'spec_helper'

feature 'Recommendation' do
  before(:each) do
    visit root_path
    click_link "Recommender quelqu'un"
  end

  scenario 'Recommend someone without filling' do
    click_button "Recommender cette personne"
    expect(page).to have_content("Votre recommendation n'a pas pu être prise en compte")
  end  

  scenario 'Recommend someone with correct filling' do
  end

  scenario 'Recommend someone but API post fails' do
  end
end