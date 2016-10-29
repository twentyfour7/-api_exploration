# frozen_string_literal: true
require_relative 'kktix_api'

module KktixEvent
  # Single event on organiztion's feed
  class Event
    attr_reader :url, :published, :title, :summary, :content, :author

    def initialize(data: nil)
      load_data(data)
    end

    def load_data(event_data)
      @url = event_data['url']
      @published = event_data['published']
      @title = event_data['title']
      @summary = event_data['summary']
      @content = event_data['content']
      @author = event_data['author']
    end
  end
end
