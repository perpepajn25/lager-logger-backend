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
    response = RestClient.get(url + "#{beer_params}" + "&type=beer")
    json = JSON.parse(response)
    results = json["data"][0..19]
    # results.each do |beer|
    #   unless Beer.find_by(brewerydb_id: beer["id"])
    #     new_beer = Beer.create(
    #       brewerydb_id: beer["id"],
    #       name: beer["name"])
    #     if beer.has_key?("description")
    #       new_beer.description = beer["description"]
    #     end
    #     if beer.has_key? "abv"
    #       new_beer.abv = beer["abv"]
    #     end
    #     if beer.has_key? "available"
    #       if beer["available"].has_key? "name"
    #         new_beer.season = beer["available"]["name"]
    #       end
    #     end
    #     if beer.has_key? "style"
    #       if beer["style"].has_key? "name"
    #         new_beer.style = beer["style"]["name"]
    #       end
    #     end
    #     if beer.has_key? "labels"
    #       if beer["labels"].has_key? "large"
    #         new_beer.image = beer["labels"]["large"]
    #       end
    #     end
    #     new_beer.save
    #   end
    # end
    render json: results
  end


private
  def beer_params
    params.permit(:term)
  end
end
