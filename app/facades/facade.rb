class Facade
  attr_reader :house

  def initialize(house)
    @house = house
  end

  def members
    service.get_characters.map do |character|
      Character.new(character)
    end
  end

  private

  def service
    HarryPotterService.new(house)
  end
end