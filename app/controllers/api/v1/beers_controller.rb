require 'rest-client'

class Api::V1::BeersController < ApplicationController
  def index
    @beers = Beer.all
    render json: @beers, status: 200
  end

  def show
    @beer = Beer.find(params[:id])
    render json: @beer, status: 200
  end

  def create
    unless Beer.find_by(brewerydb_id: beer_params["brewerydb_id"])
      Beer.create(beer_params)
    end
    @beer = Beer.find_by(brewerydb_id: beer_params["brewerydb_id"])
    render json: @beer
  end

  def search
    url = 'http://api.brewerydb.com/v2/search?key=a17d0a7fbd9707b71b79cf6624e93182&q='
    response = RestClient.get(url + "#{search_params}" + "&type=beer")
    json = JSON.parse(response)
    results = json["data"][0..19]
    render json: results
  end


private
  def search_params
    params.permit(:term)
  end

  def beer_params
    params.permit(:name,:description,:brewerydb_id,:style,:abv,:image,:season)
  end
end
