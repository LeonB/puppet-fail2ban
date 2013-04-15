class fail2ban(
	$packages = params_lookup( 'packages' ),
	$enabled  = params_lookup( 'enabled' ),
  ) inherits fail2ban::params {

  	$ensure = $enabled ? {
  		true => present,
  		false => absent
  	}

	include fail2ban::package, fail2ban::config, fail2ban::service
}
