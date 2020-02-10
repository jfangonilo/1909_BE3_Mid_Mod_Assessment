require 'rails_helper'

feature "search for members by house and select Gryffindor" do
  scenario "I see the 21 members of the Order of the Phoenix" do
    visit "/"

    select "Gryffindor", from: :house
    click_on "Search For Members"

    expect(current_path).to eq "/search"

    expect(page).to have_css('.members', count: 21)
    within(first('.members')) do
      expect(page).to have_css('.name')
      expect(page).to have_css('.house')
      expect(page).to have_css('.role')
      expect(page).to have_css('.patronus')
    end
  end
end