class SearchFacade

  def self.get_character_by_affiliation(affiliation)
    characters = AvatarService.get_character_by_affiliation(affiliation)
    characters.map do |character|
      Character.new(character)
    end
  end
end
