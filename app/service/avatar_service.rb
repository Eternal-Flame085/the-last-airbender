class AvatarService
  def self.get_character_by_affiliation(affiliation)
    response = conn.get("/api/v1/characters?affiliation=") do |char|
      char.params[:affiliation] = affiliation
    end

    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com")
  end
end
