require 'rails_helper'

feature "search for members by house and select Gryffindor" do
  scenario "I see 21 members" do
    visit "/"

    select "Gryffindor", from: :house

    expect(current_path).to eq "/search"

    expect(page).to have_css('.members', count: 21)
  end
end