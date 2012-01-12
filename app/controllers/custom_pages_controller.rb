class CustomPagesController < ApplicationController

  def home
    @events = Event.in_the_future.all
  end

end
