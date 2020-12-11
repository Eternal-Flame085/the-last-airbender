require 'rails_helper'

describe AvatarService do
  it "get_character_by_affiliation api call returns an array of hashes" do
    response = AvatarService.get_character_by_affiliation('Fire Nation')
    
    expect(response.class).to eq(Array)
    expect(response.first.class).to eq(Hash)
  end
end
