# contains the default and logics for any jdk params
class jdk_oracle::params {
  $version_update = 'default'
  $version_build  = 'default'
  $install_dir    = '/opt'
  $use_cache      = false
  $cache_source   = 'puppet:///modules/jdk_oracle/'
  $platform       = 'x64'
  $jce            = false
  $default_java   = true
  $ensure         = 'installed'
  $create_symlink = false
  $install_user   = 'root'
  $install_group  = 'root'
}
