class TopController < ApplicationController
  def index
    @toilet_places = ToiletPlace.default_order
  end
end
