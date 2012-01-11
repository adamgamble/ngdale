class Members::BaseController < ApplicationController
  layout "members"
  before_filter :authenticate_member!
end
