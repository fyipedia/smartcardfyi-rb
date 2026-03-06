# frozen_string_literal: true

require "net/http"
require "json"
require "uri"

module SmartCardFYI
  class Client
    DEFAULT_BASE_URL = "https://smartcardfyi.com/api"

    def initialize(base_url: DEFAULT_BASE_URL)
      @base_url = base_url
    end

    def search(query)
      get("/search/", q: query)
    end

    def card(slug)
      get("/card/#{slug}/")
    end

    def platform(slug)
      get("/platform/#{slug}/")
    end

    def standard(slug)
      get("/standard/#{slug}/")
    end

    def manufacturer(slug)
      get("/manufacturer/#{slug}/")
    end

    def application(slug)
      get("/application/#{slug}/")
    end

    def form_factor(slug)
      get("/form-factor/#{slug}/")
    end

    def certification(slug)
      get("/certification/#{slug}/")
    end

    def glossary_term(slug)
      get("/glossary/#{slug}/")
    end

    def compare(slug_a, slug_b)
      get("/compare/", a: slug_a, b: slug_b)
    end

    def random
      get("/random/")
    end

    def openapi
      get("/openapi.json")
    end

    private

    def get(path, params = {})
      uri = URI("#{@base_url}#{path}")
      uri.query = URI.encode_www_form(params) unless params.empty?

      response = Net::HTTP.get_response(uri)

      unless response.is_a?(Net::HTTPSuccess)
        raise Error, "HTTP #{response.code}: #{response.body}"
      end

      JSON.parse(response.body, symbolize_names: true)
    end
  end

  class Error < StandardError; end
end
