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

  def search
    url = 'http://api.brewerydb.com/v2/search?key=a17d0a7fbd9707b71b79cf6624e93182&q='
    response = RestClient.get(url + "#{beer_params}")
    json = JSON.parse(response)
    results = json["data"][0..19]
    render json: results
  end

private
  def beer_params
    params.permit(:term)
  end
end
