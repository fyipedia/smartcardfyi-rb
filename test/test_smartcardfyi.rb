# frozen_string_literal: true

require "minitest/autorun"
require "smartcardfyi"

class TestSmartCardFYI < Minitest::Test
  def setup
    @client = SmartCardFYI::Client.new
  end

  def test_version
    refute_nil SmartCardFYI::VERSION
  end

  def test_client_init
    client = SmartCardFYI::Client.new
    assert_instance_of SmartCardFYI::Client, client
  end

  def test_client_custom_base_url
    client = SmartCardFYI::Client.new(base_url: "https://custom.example.com/api")
    assert_instance_of SmartCardFYI::Client, client
  end

  def test_search
    result = @client.search("smart card")
    assert result[:results].is_a?(Array)
  end
end
