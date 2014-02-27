# == Class kafka
# Installs Kafka package.
# Unless you need to explicitly set the version of the Kafka package you
# want, you probably don't need to include this class directly.
# Including just kafka::server to set up a Kafka Broker, or just
# kafka::mirror to set upa Kafka MirrorMaker service should suffice.
#
# == Parameters:
#
# $version   - Kafka package version number.  Set this
#              if you need to override the default
#              package version.  If you override this,
#              the version must be >= 0.8.  Default: installed.

# Include Puppetlab's module to manage apt
include apt

# Import Wikimedia's debian repo that contains a Kafka package
apt::source { 'wikimedia':
  location          => 'http://apt.wikimedia.org/wikimedia',
  repos             => 'hardy-wikimedia main universe',
  required_packages => 'wikimedia-keyring',
  include_src       => true,
}

class kafka(
    $version = $kafka::defaults::version
)
{
    package { 'kafka':
        ensure => $version,
    }
}
