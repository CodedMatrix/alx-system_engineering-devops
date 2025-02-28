# 0-strace_is_your_friend.pp
# Puppet manifest to fix Apache 500 error

exec { 'fix-wordpress':
  command => 'sed -i s/class-wp-locale.phpp/class-wp-locale.php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin:/usr/bin:/bin',
}
