require 'rails_helper'

describe 'As a user' do
  before :each do
    visit root_path

    select 'Fire Nation', from: :nation

    click_button 'Search For Members'
  end

  it "When I visit / and select Fire Nation i am taken to the page /search" do
    expect(current_path).to eq(search_path)
  end

  it "I see the total number of people who live in the fire nation" do
    characters = SearchFacade.get_character_by_affiliation('fire nation')

    expect(page).to have_content("People living in the Fire Nation: #{characters.count}")
  end

  it "I see detailed information of each character" do
    characters = SearchFacade.get_character_by_affiliation('fire nation')

    allies_expected = characters.first.allies.first
    enemies_expected = characters.first.enemies.first

    within(id="#person-#{characters.first.id}") do
      expect(page).to have_content('No Image!')
      expect(page).to have_content(characters.first.name)
      expect(page).to have_content(characters.first.affiliation)
      expect(page).to have_content(allies_expected)
      expect(page).to have_content(enemies_expected)
    end

    allies_expected = characters.last.allies.first
    enemies_expected = characters.last.enemies.first

    within(id="#person-#{characters.last.id}") do
      expect(page).to have_content(characters.last.name)
      expect(page).to have_content(characters.last.affiliation)
      expect(page).to have_content(allies_expected)
      expect(page).to have_content(enemies_expected)
    end
  end
end
