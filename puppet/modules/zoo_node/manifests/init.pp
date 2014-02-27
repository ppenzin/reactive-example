# == Class: zoo_node
#
# A node under control of our zookeper cluster (including zookeper nodes themselves)
#
class zoo_node {
  class { 'zookeeper':
      hosts    => { 'zoo1.example.org' => 1, 'zoo2.example.org' => 2},
      data_dir => '/var/lib/zookeeper',
  }
}
