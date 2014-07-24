class grub (
  $password = unset
){

  #RHEL-06-000065, RHEL-06-000066, RHEL-06-000067
  file { '/boot/grub/grub.conf':
    ensure => 'file',
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
  }
  #RHEL-06-000525
  kernel_parameter { 'audit':
    ensure => 'present',
    value  => '1',
  }

}
