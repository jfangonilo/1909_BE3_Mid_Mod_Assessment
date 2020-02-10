class SearchController < ApplicationController
  def index
    conn = Faraday.new("https://www.potterapi.com/v1/") do |f|
      f.adapter Faraday.default_adapter
      f.params['key'] = ENV['HP_API_KEY']
    end
    response = conn.get("characters")

    member_list = JSON.parse(response.body, symbolize_names: true)
    @members = member_list.map do |data|
      Character.new(data)
    end
  end
end