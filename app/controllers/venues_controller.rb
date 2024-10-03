class VenuesController < ApplicationController

  def index
    matching_venues = Venue.all
    @venues = matching_venues.order(:created_at)

    render({ :template => "venue_templates/venue_list" })
  end

  def show
    venue_id = params.fetch("the_id")
    @the_venue = Venue.where({ :id => venue_id }).at(0)

    render({ :template => "venue_templates/details" })
  end

  def create
    @the_venue = Venue.new
    @the_venue.address = params.fetch("query_address")
    @the_venue.name = params.fetch("name")
    @the_venue.neighborhood = params.fetch("neighborhood")
    @the_venue.save

    redirect_to("/venues/#{@the_venue.name}")
  end
  
  def update
    the_id = params.fetch("the_id")

    @venue = Venue.where({ :id => the_id })
    @venue.address = params.fetch("query_address")
    @venue.name = params.fetch("Query_name")
    @venue.neighborhood = params.fetch("query_neighborhood")
    @venue.save
    
    redirect_to("/venues/#{@venue.id}")
  end

  def destroy
    the_id = params.fetch("the_id")
    matching_venues = Venue.where({ :id => the_id })
    @venue = matching_venues
    @venue.destroy

    redirect_to("/venues")
  end

end
