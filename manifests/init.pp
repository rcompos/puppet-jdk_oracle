# == Class: jdk_oracle
#
# Installs the Oracle Java JDK, from the Oracle servers
#
# === Parameters
#
# [*version*]
#   String.  Java Version to install
#   Defaults to <tt>8</tt>.
#
# [*version_update*]
#   String.  Java Version Update to install
#   Defaults to <tt>Defaults based on major version</tt>.
#
# [*version_build*]
#   String.  Java Version build to install
#   Defaults to <tt>Defaults based on major version</tt>.
#
# [* java_install_dir *]
#   String.  Java Installation Directory
#   Defaults to <tt>/opt</tt>.
#
# [* use_cache *]
#   Boolean.  Optionally host the installer file locally instead of fetching it each time (for faster dev & test)
#   The puppet cache flag is for faster local vagrant development, to
#   locally host the tarball from oracle instead of fetching it each time.
#   Defaults to <tt>false</tt>.
#
# [* platform *]
#   String.  The platform to use
#   Defaults to <tt>x64</tt>.
#
# [* jce *]
#   Boolean.  Optionally install Java Cryptography Extension (JCE) Unlimited Strength Jurisdiction Policy Files
#   Defaults to <tt>false</tt>.
#
# [* default_java *]
#   Boolean.  If the installed java version is linked as the default java, javac etc...
#   Defaults to <tt>true</tt>.
#
# [* ensure *]
#   String.  Specifies if jdk should be installed or absent
#   Defaults to <tt>installed</tt>.
#
class jdk_oracle (
  $version        = $::jdk_oracle::params::version,
  $version_update = $::jdk_oracle::params::version_update,
  $version_build  = $::jdk_oracle::params::version_build,
  $install_dir    = $::jdk_oracle::params::install_dir,
  $use_cache      = $::jdk_oracle::params::use_cache,
  $cache_source   = $::jdk_oracle::params::cache_source,
  $platform       = $::jdk_oracle::params::platform,
  $jce            = $::jdk_oracle::params::jce,
  $default_java   = $::jdk_oracle::params::default_java,
  $ensure         = $::jdk_oracle::params::ensure,
  $create_symlink = $::jdk_oracle::params::create_symlink,
  $install_user   = $::jdk_oracle::params::install_user,
  $install_group  = $::jdk_oracle::params::install_group,
) inherits jdk_oracle::params {

  class { '::jdk_oracle::install': } ->
  Class['::jdk_oracle']

}
