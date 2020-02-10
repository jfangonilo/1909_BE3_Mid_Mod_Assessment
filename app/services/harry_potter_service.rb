class HarryPotterService
  attr_reader :house

  def initialize(house)
    @house = house
  end

  def get_characters
    get_json("characters")
  end

  private

  def get_json(uri)
    response = conn.get(uri)
    JSON.parse(response.body)
  end

  def conn
    conn = Faraday.new("https://www.potterapi.com/v1/") do |f|
      f.adapter Faraday.default_adapter
      f.params['key'] = ENV['HP_API_KEY']
      f.params['house'] = house
      f.params['orderOfThePhoenix'] = true
    end
  end
end