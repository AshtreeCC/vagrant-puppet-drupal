stage { 'prepare': 
	before => Stage['main']
}

class {
	'bootstrap':      stage => prepare;
	'tools':          stage => main;
	'php':            stage => main;
	'nginx':          stage => main;
	'mysql':          stage => main;
	'drupal':	  stage => main;
}

addServer { 'drupal':
	site => 'drupal.dev',
	root => '/var/www/'
}

addServer { 'ponderingpanda':
	site => 'ponderingpanda.dev',
	root => '/var/www/www.ponderingpanda.dev/'
}

addMysql { 'www_pp':
	user => 'www_pp_usr',
	password => '565s7kcx'	
}
