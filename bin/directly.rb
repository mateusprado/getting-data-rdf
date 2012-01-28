require 'rdf'
require 'linkeddata'
#require 'equivalent-xml'

graph = RDF::Graph.load("http://dbpedia.org/resource/Elvis_Presley")

puts graph.size()