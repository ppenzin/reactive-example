# Get basic configuration
include baseconfig

node 'zoo1', 'zoo2' {
  include zoo_node

  class { 'zookeeper::server': }
}

node 'kafka1', 'kafka2' {
  include kafka_node
}
