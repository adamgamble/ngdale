class Event < ActiveRecord::Base

  scope :in_the_future, lambda { where("date > ?", Time.zone.now.to_date).order("date ASC")}
end
