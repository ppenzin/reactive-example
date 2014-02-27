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

define url-package (
  $url,
  $provider,
  $package = undef,
) {

  if $package {
    $package_real = $package
  } else {
    $package_real = $title
  }

  $package_path = "/tmp/${package_real}"

  exec {'download':
    command => "/usr/bin/wget -O ${package_path} ${url}"
  }

  package {'install':
    ensure   => installed,
    name     => "${package}",
    provider => 'dpkg',
    source   => "${package_path}",
  }

  file {'cleanup':
    ensure => absent,
    path   => "${package_path}",
  }

  Exec['download'] -> Package['install'] -> File['cleanup']

}

class kafka(
    $version = $kafka::defaults::version
)
{
    url-package { 'kafka':
        url => 'http://apt.wikimedia.org/wikimedia/pool/universe/k/kafka/kafka_0.8.0-2_all.deb',
        # ensure   => $version,
        provider => dpkg,
    }
}
