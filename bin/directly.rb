require 'rdf'
require 'linkeddata'
#require 'equivalent-xml'

graph = RDF::Graph.load("http://www.w3.org/People/EM/contact#me")

puts graph.size()