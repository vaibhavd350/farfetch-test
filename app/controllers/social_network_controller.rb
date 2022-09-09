class SocialNetworkController < ApplicationController
  def index
    json_response = {}

    {
      "twitter"   => "tweet",
      "facebook"  => "status",
      "instagram" => "picture",
    }.each do |site, attribute|
      rest_client = RestClientResponse.new("https://takehome.io/#{site}", attribute)
      response    = rest_client.get

      json_response[site] = response
    end


    render json: JSON.pretty_generate(json_response)
  end

end
