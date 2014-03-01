# Get basic configuration
include baseconfig

node 'zoo1' {
  class { 'zookeeper':
      hosts    => { 'zoo1.example.org' => 1},
      data_dir => '/var/lib/zookeeper',
  }

  class { 'zookeeper::server': }
}

node 'kafka1' {
  include java

  class { 'zookeeper':
      hosts    => { 'zoo1.example.org' => 1},
      data_dir => '/var/lib/zookeeper',
  }

  class { 'kafka':
    broker_id => '0',
    # hostname => 'kafka1.example.org',
    # zookeeper_connect => 'localhost:2181',
    package_url => 'http://mirrors.ukfast.co.uk/sites/ftp.apache.org/kafka/0.8.0/kafka_2.8.0-0.8.0.tar.gz'
  }
}

