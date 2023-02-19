class PagesController < ApplicationController
  
  before_action :authorize
  
  def home
    #a place for /
  end
end
