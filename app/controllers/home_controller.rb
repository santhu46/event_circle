class HomeController < ApplicationController
	before_filter :authenticate_user!, :only => :index
	def dash_board
	  if current_user
	  	redirect_to home_index_path
	  end
	end
  def index
  	  @events_attended = current_user.registered_events
  	  @events_published = current_user.events.where(published: true)
  	  @events_for_publish = current_user.events.where(published: false)
  end

end
