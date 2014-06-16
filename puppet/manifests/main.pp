vagrant stage { 'prepare': before => Stage['main'] }

class {
	'bootstrap':      stage => prepare;
	'tools':          stage => main;
	'php':            stage => main;
	'nginx':          stage => main;
	'mysql':          stage => main;
}

addServer {'phalcon':
	site => 'phalcon.dev',
	root => '/var/www/'
}

addServer {'ponderingpanda':
	site => 'www.ponderingpanda.dev',
	root => '/var/www/www.ponderingpanda.dev/public/'
}
