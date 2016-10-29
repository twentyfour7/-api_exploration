# frozen_string_literal: true
require_relative 'kktix_api'

@kktix_api = KktixEvent::KktixApi.new
acts = @kktix_api.events(oid: 'nthuion')
puts acts
