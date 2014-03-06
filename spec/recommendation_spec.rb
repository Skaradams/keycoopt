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
    fill_in "First name", with: "Jimi"
    fill_in "Last name", with: "Hendrix"
    fill_in "Email", with: "test@test.com"
    fill_in "Message", with: "Je souhaite recommender cette personne"

    click_button "Recommender cette personne"
    expect(page).to have_content("Votre recommendation a bien été prise en compte")
  end

  scenario 'Recommend someone but API post fails' do
  end
end