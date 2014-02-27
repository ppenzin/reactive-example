# == Class: kafka_node
#
# A Kafka broker node under control of our zookeper cluster
#
class kafka_node {
  # Include Kafka Broker Server.
  class { 'kafka::server':
      brokers          => {
          'kafka1.example.org' => { 'id' => 1 },
          'kafka2.example.org' => { 'id' => 2 },
      },
  }
}
