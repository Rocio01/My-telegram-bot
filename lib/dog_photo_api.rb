require 'net/http'
require 'json'

class DogPhotoApi
  API_URL = 'https://api.thedogapi.com/v1/images/search'.freeze

  attr_reader :url

  def initialize
    @url = fetch_url
  end

  private

  def fetch_url
    uri = URI(API_URL)
    request = Net::HTTP::Get.new(uri)
    request['x-api-key'] = ENV['DOG_API_KEY'] if ENV['DOG_API_KEY']
    response = Net::HTTP.start(uri.hostname, uri.port,
                               use_ssl: uri.scheme == 'https',
                               open_timeout: 5,
                               read_timeout: 10) do |http|
      http.request(request)
    end
    parsed = JSON.parse(response.body)
    parsed.dig(0, 'url')
  rescue StandardError
    nil
  end
end
