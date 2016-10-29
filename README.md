# kktix_api Gem

[![Build Status](https://travis-ci.org/twentyfour7/kktix-api.svg?branch=master)](https://travis-ci.org/twentyfour7/kktix-api)

kktix_api is a gem that gets event information of an organization from KKTIX

## Installation

If you are working on a project, add this to your Gemfile: `gem 'kktix_api'`

For ad hoc installation from command line:

```$ gem install kktix_api```


## Usage

Require kktix_api gem in your code: `require 'kktix_api'`


See the following example code for more usage details:

```ruby
oid = '<your organization id>'

acts = KktixEvent::KktixApi.events(oid)
puts acts

organization = KktixEvent::Organization.find(oid)
puts organization.name, organization.uri
organization.events.each do |event|
  puts event.title, event.published
end

```