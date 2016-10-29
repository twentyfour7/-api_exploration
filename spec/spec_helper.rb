# frozen_string_literal: true
require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
require 'minitest/rg'
require 'yaml'
require 'vcr'
require 'webmock'

require_relative '../lib/kktix-api/organization.rb'
require_relative '../lib/kktix-api/kktix_api.rb'

FIXTURES_FOLDER = 'spec/fixtures'
CASSETTES_FOLDER = "#{FIXTURES_FOLDER}/cassettes"
CASSETTE_FILE = 'kktix_api'

TEST_ORG_ID = 'nthuion'
# KKTIX_RESPONSE = YAML.load(File.read('spec/fixtures/kktix_response.yml'))
# TEST_ORG_INFO = YAML.load(File.read('spec/fixtures/nthuion_info.yml'))
