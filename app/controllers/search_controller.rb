class SearchController < ApplicationController
  def index
    render locals: {
      facade: Facade.new(params[:house])
    }
  end
end