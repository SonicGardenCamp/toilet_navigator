class TopController < ApplicationController
  def index
    @toilet_place = ToiletPlace.first
  end
end
