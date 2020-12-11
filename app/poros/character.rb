class Character
  attr_reader :id,
              :name,
              :affiliation,
              :image

  def initialize(character)
    @id = character[:_id]
    @name = character[:name]
    @allies = character[:allies]
    @enemis = character[:enemies]
    @affiliation = character[:affiliation]
    @image = character[:photoUrl]
  end

  def allies
    @allies.map do |allie|
      allie if allie != ""
    end
  end

  def enemies
    @allies.map do |allie|
      allie if allie != ""
    end
  end
end
