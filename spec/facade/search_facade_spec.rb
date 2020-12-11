require 'rails_helper'

describe SearchFacade do
  it "get_character_by_affiliation returns an Array of Character objetcs" do
    characters = SearchFacade.get_character_by_affiliation('Fire Nation')
    
    expect(characters.class).to eq(Array)
    expect(characters.first).to be_a Character
  end
end
