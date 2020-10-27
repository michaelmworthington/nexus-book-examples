// run a keyword search and show GAV coordinates from result
// usage example: groovy listartifacts.groovy commons-lang3

def xml = ("http://localhost:8081/nexus/service/local/data_index?q=" + args[0]).toURL().text 

def root = new XmlParser().parseText( xml )

root.data.artifact.each {
  println "${it.groupId.text()}:${it.artifactId.text()}:${it.version.text()}"
}