#!/usr/bin/env ruby
require "cgi"
require "uri"

def add_tracking url
  parsed = URI.parse(url)
  opts = {}
  opts = CGI.parse(parsed.query) if parsed.query

  opts['utm_medium'] = %w(ukgovtapidx.slack.com)
  opts['utm_source'] = %w(links)

  parsed.query = URI.encode_www_form(opts)
  parsed.to_s
end

text = ARGF.read

urls = []
text.scan(URI.regexp(%w(http https))) do |*matches|
  urls << $&
end

urls.each do |url|
  text.gsub!(url, add_tracking(url))
end

puts text
