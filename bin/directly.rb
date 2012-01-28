require 'rdf'
require 'linkeddata'

graph = RDF::Graph.load("http://dbpedia.org/resource/Elvis_Presley")

puts graph.size()