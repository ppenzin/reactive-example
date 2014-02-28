# Get basic configuration
include baseconfig

node 'zoo1', 'zoo2' {
  class { 'zookeeper':
      hosts    => { 'zoo1.example.org' => 1, 'zoo2.example.org' => 2},
      data_dir => '/var/lib/zookeeper',
  }

  class { 'zookeeper::server': }
}

node 'kafka1', 'kafka2' {
  include java

  class { 'kafka':
#    broker_id => '0',
    hostname => $::ipaddress_eth1, # $::ipaddress is picked by default
    zookeeper_connect => 'localhost:2181',
    package_url => 'http://mirrors.ukfast.co.uk/sites/ftp.apache.org/kafka/0.8.0/kafka_2.8.0-0.8.0.tar.gz'
  }
}
