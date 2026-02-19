require 'net/http'
require 'json'
require_relative './dog'

class DogFactsApi
  FALLBACK_DOG = Dog.new
  API_URL = 'https://dogapi.dog/api/v2/facts'.freeze

  attr_reader :fact

  def initialize
    @fact = fetch_fact
  end

  private

  def fetch_fact
    uri = URI(API_URL)
    response = Net::HTTP.get_response(uri)
    parsed = JSON.parse(response.body)
    parsed.dig('data', 0, 'attributes', 'body') || fallback_fact
  rescue StandardError
    fallback_fact
  end

  def fallback_fact
    FALLBACK_DOG.dog_curiosities.sample
  end
end
