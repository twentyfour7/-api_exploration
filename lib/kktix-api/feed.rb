# frozen_string_literal: true
require_relative 'kktix_api'
require_relative 'event'

module KktixEvent
  # Single event on organiztion's feed
  class Feed
    attr_reader :events

    def initialize(feed_data:)
      @events = feed_data.map do |event_data|
        KktixEvent::Event.new(data: event_data)
      end
    end

    def count
      @events.count
    end
  end
end
