require 'rails_helper'

describe Character do
  before :each do
    @character = SearchFacade.get_character_by_affiliation('fire nation').first
  end
  it "exists" do
    expect(@character).to be_a Character
  end

  it "has readable variables" do
    expect(@character.name).to eq("Chan (Fire Nation admiral)")
    expect(@character.id).to eq('5cf5679a915ecad153ab68fd')
    expect(@character.affiliation).to eq('Fire Nation Navy')
  end

  it "allies returns an array of string" do
    expect(@character.allies.class).to eq(Array)
    expect(@character.allies.first.class).to eq(String)
  end

  it "enemies returns an array of string" do
    expect(@character.allies.class).to eq(Array)
    expect(@character.allies.first.class).to eq(String)
  end
end
