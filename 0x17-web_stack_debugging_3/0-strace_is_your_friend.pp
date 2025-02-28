# 0-strace_is_your_friend.pp
# Puppet manifest to fix Apache 500 error by correcting file extension typo

exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin:/usr/bin:/bin',
  onlyif  => 'grep -q phpp /var/www/html/wp-settings.php',
}
