# Class: fail2ban::params
#
# This class defines default parameters used by the main module class fail2ban
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to fail2ban class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class fail2ban::params {

	### Application related parameters

	$packages = $::operatingsystem ? {
		default => ['fail2ban', 'python-pyinotify']
	}

	$enabled = true

}
