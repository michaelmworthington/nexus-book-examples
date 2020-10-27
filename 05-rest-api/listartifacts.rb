# run a keyword search and show GAV coordinates from result
# usage example: ruby listartifacts.rb commons-lang3

require 'net/http'
require "rexml/document"
include REXML

url = 'http://localhost:8081/nexus/service/local/data_index?q=' 
resp = Net::HTTP.get_response( URI.parse( url + ARGV[0]) )
doc = REXML::Document.new( resp.body )
XPath.each( doc, "//data/artifact" ) do |r|
  puts "#{r.elements["groupId"].text}:#{r.elements["artifactId"].text}:#{r.elements["version"].text}"
end 