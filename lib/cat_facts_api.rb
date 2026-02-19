require 'net/http'
require 'json'
require_relative './cat'

class CatFactsApi
  FALLBACK_CAT = Cat.new
  API_URL = 'https://catfact.ninja/fact'.freeze

  attr_reader :fact

  def initialize
    @fact = fetch_fact
  end

  private

  def fetch_fact
    uri = URI(API_URL)
    response = Net::HTTP.get_response(uri)
    parsed = JSON.parse(response.body)
    parsed['fact'] || fallback_fact
  rescue StandardError
    fallback_fact
  end

  def fallback_fact
    FALLBACK_CAT.cat_curiosities.sample
  end
end
