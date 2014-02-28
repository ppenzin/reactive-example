reactive-example
================

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

* _kafka_ module developed by Wikimedia:

  https://github.com/wikimedia/puppet-kafka

  * Enhanced with url-package from ask.puppetlabs.com

    https://ask.puppetlabs.com/question/3473/can-you-install-deb-file-from-the-files-directory/

* _kafka_ module developed by Whisklabs:

  http://forge.puppetlabs.com/whisklabs/kafka

* _zookeper_ module is developed by Wikimedia:

  https://github.com/wikimedia/puppet-zookeeper

# Dependencies
* Hiera:
  http://docs.puppetlabs.com/hiera/1/installing.html

* Virtual Box Guest Additions compatibility: either keep VirtualBox version in
  synch with Vagrant box or use vagrant-vbguest:

 vagrant gem install vagrant-vbguest


