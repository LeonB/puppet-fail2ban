class fail2ban::config {

    # # do package before config
    # Users::Account["${fail2ban::user}"] -> Class['fail2ban::package']

    # users::account { $fail2ban::user:
    #     ensure  => $fail2ban::ensure,
    #     uid     => 140,
    #     groups  => ['sabnzbdplus', 'sickbeard'],
    #     home    => '/var/fail2ban',
    #     shell   => '/bin/false',
    #     comment => 'fail2ban',
    # }

    # nginx::vhost::snippet { 'fail2ban':
    #     vhost   => 'default',
    #     content => template('fail2ban/nginx_vhost.erb'),
    #     ensure  => $fail2ban::ensure,
    #  }

    # file { '/etc/default/fail2ban':
    #     ensure  => $fail2ban::ensure,
    #     owner   => 'root',
    #     group   => 'root',
    #     mode    => 0644,
    #     content => template('fail2ban/default/fail2ban.erb'),
    # }
}
