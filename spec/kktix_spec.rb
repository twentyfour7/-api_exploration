# frozen_string_literal: true
require_relative 'spec_helper.rb'

describe 'KKTIX API get events spec' do
  VCR.configure do |c|
    c.cassette_library_dir = CASSETTES_FOLDER
    c.hook_into :webmock
  end

  before do
    VCR.insert_cassette CASSETTE_FILE, record: :new_episodes
  end

  after do
    VCR.eject_cassette
  end

  it 'should be able to get events information throuh api' do
    KktixEvent::KktixApi.events.wont_be_empty
  end

  it 'should be able to return an empty array if the org does not exist' do
    KktixEvent::KktixApi.events(slug: 'notexist').empty?
  end

  it 'should be able to search events throuh api' do
    KktixEvent::KktixApi.search('go').wont_be_empty
  end
end
