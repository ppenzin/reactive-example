reactive-example
================

This repository is outdated, current development is done under UTiWorldwide:
https://github.com/UTiWorldwide/reactive-example

Example of event-driven system using Vagrant and a stack of Apache technologies

# Roadmap
* In flight:
  1. Set up Kafka zookeper cluster
  2. Set up Kafka nodes
* To do:
  3. Sample application that saves its state in a database
  4. Set up Storm
  5. Set up Elasticsearch
  6. Set up representation UI

# References
* _baseconfig_ module is taken from vagrant-examples by Patrick Lee:

  https://github.com/patrickdlee/vagrant-examples

* _kafka_ module developed by Whisklabs:

  http://forge.puppetlabs.com/whisklabs/kafka

* _zookeper_ module is developed by Wikimedia:

  https://github.com/wikimedia/puppet-zookeeper

* Puppet 3.x on the guest

  http://blog.doismellburning.co.uk/2013/01/19/upgrading-puppet-in-vagrant-boxes/

# Dependencies
* Virtual Box Guest Additions compatibility: either keep VirtualBox version in
  synch with Vagrant box or use vagrant-vbguest:
```
vagrant gem install vagrant-vbguest
```

