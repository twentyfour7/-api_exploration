# frozen_string_literal: true
require_relative 'kktix_api'
require_relative 'feed'

module KktixEvent
  # Single organization on KKTIX
  class Organization
    attr_reader :oid, :title, :updated, :feed

    def initialize(oid)
      organization_data = KktixEvent::KktixApi.events(oid)
      @title = organization_data['title']
      @updated = organization_data['updated']
      @feed = KktixEvent::Feed.new(feed_data: organization_data['entry'])
    end

    # def events
    #   return @events if @events
    #   return if events_hash.nil?
    #   @events = events_hash
    # end

    def name
      update_info if @name.nil?
      @name
    end

    def uri
      update_info if @uri.nil?
      @uri
    end

    private

    def update_info
      author = organization_data['entry'].first['author']
      @name = author['name']
      @uri = author['uri']
    end
  end
end
