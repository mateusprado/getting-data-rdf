require 'rdf'
require 'linkeddata'

include RDF

graph = RDF::Graph.load("http://dbpedia.org/resource/Elvis_Presley")

query = RDF::Query.new({
  :person => {
    RDF.type => FOAF.Person,
    FOAF.givenName => :name,
    RDF::URI("http://dbpedia.org/ontology/birthDate") => :birthDate,
    RDF::URI("http://dbpedia.org/ontology/deathDate") => :deathDate
  }
})

results = query.execute(graph) 

p results.first[:name].to_s
p results.first[:birthDate].to_s
p results.first[:deathDate].to_s
