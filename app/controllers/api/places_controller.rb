
class Api::PlacesController < ApplicationController

  def index
    client = Foursquare2::Client.new(:client_id => 'ZMSRRVG0L5B52LA5H34ZYE1N4WFUKVAC42SX2C5V3L2D0YZ3', :client_secret => 'CKO4NBZKL32FTGN3NAVML3XAJPYIJDIHMDJPO1OWDTUWYP2H')
    venues = client.search_venues(:ll => '37.7749295,-122.4194155', :query => params['q'])
    render json: venues
  end

end
