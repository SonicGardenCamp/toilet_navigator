class TopController < ApplicationController
  def index
    @toilet_places = ToiletPlace.all
  end
end
