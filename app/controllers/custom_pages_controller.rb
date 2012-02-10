class CustomPagesController < ApplicationController

  def home
    @events           = Event.in_the_future.all
    @carousel_images  = CarouselImage.all
  end

end
