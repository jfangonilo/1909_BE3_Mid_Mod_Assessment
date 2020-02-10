require 'rails_helper'

describe Character do
  it "has_attributes" do
    data = {
      "_id": "5a0fa4daae5bc100213c232e",
      "name": "Hannah Abbott",
      "role": "student",
      "house": "Hufflepuff",
      "school": "Hogwarts School of Witchcraft and Wizardry",
      "__v": 0,
      "ministryOfMagic": false,
      "orderOfThePhoenix": false,
      "dumbledoresArmy": true,
      "deathEater": false,
      "bloodStatus": "half-blood",
      "species": "human"
    }

    hannah = Character.new(data)
    expect(hannah.name).to eq data[:name]
    expect(hannah.role).to eq data[:role]
    expect(hannah.house).to eq data[:house]
    expect(hannah.patronus).to eq nil
  end
end