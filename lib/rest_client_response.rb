require 'rest-client'

class RestClientResponse

  def initialize(site, attribute)
    @site      = site
    @attribute = attribute
  end

  def get
    response = begin
      RestClient.get(@site)
    rescue RestClient::Exception => e
      e.response
    end

    respond_with(response)
  end

  def respond_with(response)
    begin
      JSON.parse(response.body).map{|r| r[@attribute]}
    rescue Exception => e
      []
    end
  end

end
