# frozen_string_literal: true
require 'yaml'
require 'http'

module KktixEvent
  # Service for retriving KKTIX events
  class KktixApi
    def self.events(oid = nil)
      response = HTTP.get(events_json_uri(oid: oid)).parse
      # return response['entry'] if response.key?('entry')
      # []
    end

    # def title
    #   response = HTTP.get(events_json_uri).parse
    #   return response['title'] if response.key?('title')
    # end
    #
    # def updated
    #   response = HTTP.get(events_json_uri).parse
    #   return response['updated'] if response.key?('updated')
    # end

    private

    def self.events_json_uri(oid: nil)
      return 'https://kktix.com/events.json' if oid.nil?
      "http://#{oid}.kktix.cc/events.json"
    end
  end
end
