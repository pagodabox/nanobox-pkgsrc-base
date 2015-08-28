# -*- mode: makefile; tab-width: 8; indent-tabs-mode: 1 -*-
# vim: ts=8 sw=8 ft=make noet

.if !defined(PHP_EXTENSION_VERSIONS_MK)
PHP_EXTENSION_VERSIONS_MK=	#defined
.include "../../base/php/phpversion.mk"
.include "../../base/newrelic/newrelicversion.mk"

PHP_EXTENSION_VERSION.amqp=		1.4.0			# https://pecl.php.net/package/amqp
PHP_EXTENSION_VERSION.apc=		3.1.13			# https://pecl.php.net/package/APC
PHP_EXTENSION_VERSION.apcu=		4.0.7			# https://pecl.php.net/package/APCu
PHP_EXTENSION_VERSION.apfd=		1.0.1			# https://pecl.php.net/package/apfd
PHP_EXTENSION_VERSION.apm=		2.0.5			# https://pecl.php.net/package/APM
PHP_EXTENSION_VERSION.bcmath=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.bcompiler=	1.0.2			# https://pecl.php.net/package/bcompiler
PHP_EXTENSION_VERSION.bz2=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.calendar=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.ctype=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.curl=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.dba=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.dom=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.eaccelerator=	${PHP_BASE_VERS}.0.9.6.1	# https://github.com/eaccelerator/eaccelerator/tree/master
PHP_EXTENSION_VERSION.enchant=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.exif=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.fileinfo=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.filter=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.ftp=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.gd=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.gender=		1.1.0			# https://pecl.php.net/package/gender
PHP_EXTENSION_VERSION.geoip=		1.1.0			# https://pecl.php.net/package/geoip
PHP_EXTENSION_VERSION.gettext=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.gmp=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.gnupg=		1.3.6			# https://pecl.php.net/package/gnupg
PHP_EXTENSION_VERSION.hash=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.htscanner=	1.0.1			# https://pecl.php.net/package/htscanner
PHP_EXTENSION_VERSION.http=		2.5.1			# https://pecl.php.net/package/pecl_http
PHP_EXTENSION_VERSION.iconv=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.igbinary=		1.2.1			# https://pecl.php.net/package/igbinary
PHP_EXTENSION_VERSION.imagick=		3.1.2			# https://pecl.php.net/package/imagick
PHP_EXTENSION_VERSION.imap=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.intl=		${PHP_BASE_VERS}
.if ${OPSYS} == SunOS
PHP_EXTENSION_VERSION.ioncube_loader=	4.6.0			# file from Scott
.else
PHP_EXTENSION_VERSION.ioncube_loader=	5.0.11			# http://www.ioncube.com/loaders.php
.endif
PHP_EXTENSION_VERSION.json=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.json_post=	1.0.1			# https://pecl.php.net/package/json_post
PHP_EXTENSION_VERSION.ldap=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.lzf=		1.6.3			# https://pecl.php.net/package/lzf
PHP_EXTENSION_VERSION.magickwand=	1.0.9			# http://www.magickwand.org/download/php/
PHP_EXTENSION_VERSION.mbstring=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.mcrypt=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.memcache=		3.0.8			# https://pecl.php.net/package/memcache
PHP_EXTENSION_VERSION.memcached=	2.2.0			# https://pecl.php.net/package/memcached
PHP_EXTENSION_VERSION.mogilefs=		0.9.2			# https://pecl.php.net/package/mogilefs
PHP_EXTENSION_VERSION.mongo=		1.6.11			# https://pecl.php.net/package/mongo
PHP_EXTENSION_VERSION.mongodb=		0.6.3			# https://pecl.php.net/package/mongodb
PHP_EXTENSION_VERSION.mssql=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.mysql=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.mysqli=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.ncurses=		1.0.2			# https://pecl.php.net/package/ncurses
PHP_EXTENSION_VERSION.newrelic=		${NEWRELIC_VERSION}	# https://download.newrelic.com/php_agent/release/
PHP_EXTENSION_VERSION.newt=		1.2.8			# https://pecl.php.net/package/newt
PHP_EXTENSION_VERSION.oauth=		1.2.3			# https://pecl.php.net/package/oauth
.if ${_PHP_VERSION} == "53" || ${_PHP_VERSION} == "54"
PHP_EXTENSION_VERSION.opcache=		7.0.5			# https://pecl.php.net/package/ZendOpcache or https://github.com/zendtech/ZendOptimizerPlus
.else
PHP_EXTENSION_VERSION.opcache=		${PHP_BASE_VERS}
.endif
PHP_EXTENSION_VERSION.parsekit=		1.3.0			# https://pecl.php.net/package/parsekit
PHP_EXTENSION_VERSION.pcntl=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.pdo=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.pdo_dblib=	${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.pdo_mysql=	${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.pdo_odbc=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.pdo_pgsql=	${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.pdo_sqlite=	${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.pgsql=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.phalcon=		2.0.7			# https://github.com/phalcon/cphalcon
PHP_EXTENSION_VERSION.phar=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.phpwkhtmltox=	0.10			# https://github.com/mreiferson/php-wkhtmltox
PHP_EXTENSION_VERSION.posix=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.propro=		1.0.0			# https://pecl.php.net/package/propro
PHP_EXTENSION_VERSION.pspell=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.radius=		1.2.7			# https://pecl.php.net/package/radius
PHP_EXTENSION_VERSION.raphf=		1.1.0			# https://pecl.php.net/package/raphf
PHP_EXTENSION_VERSION.rar=		3.0.2			# https://pecl.php.net/package/rar
PHP_EXTENSION_VERSION.readline=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.recode=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.redis=		2.2.7			# https://pecl.php.net/package/redis
PHP_EXTENSION_VERSION.session=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.shmop=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.simplexml=	${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.snmp=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.soap=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.sockets=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.sphinx=		1.3.3			# https://pecl.php.net/package/sphinx
PHP_EXTENSION_VERSION.sqlite=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.ssh2=		0.12			# https://pecl.php.net/package/ssh2
PHP_EXTENSION_VERSION.stats=		1.0.3			# https://pecl.php.net/package/stats
PHP_EXTENSION_VERSION.stomp=		1.0.8			# https://pecl.php.net/package/stomp
PHP_EXTENSION_VERSION.svn=		1.0.2			# https://pecl.php.net/package/svn
PHP_EXTENSION_VERSION.sysvmsg=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.sysvsem=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.sysvshm=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.tidy=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.timezonedb=	2015.5			# https://pecl.php.net/package/timezonedb
PHP_EXTENSION_VERSION.tokenizer=	${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.txforward=	1.0.7			# https://pecl.php.net/package/txforward
PHP_EXTENSION_VERSION.uploadprogress=	1.0.3.1			# https://pecl.php.net/package/uploadprogress
PHP_EXTENSION_VERSION.wddx=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.wsf=		2.1.0			# https://github.com/notxarb/wsf-php
PHP_EXTENSION_VERSION.xcache=		3.2.0			# http://xcache.lighttpd.net/
.if ${_PHP_VERSION} == "53"
PHP_EXTENSION_VERSION.xdebug=		2.2.7			# https://pecl.php.net/package/xdebug
.else
PHP_EXTENSION_VERSION.xdebug=		2.3.3			# https://pecl.php.net/package/xdebug
.endif
PHP_EXTENSION_VERSION.xml=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.xmlreader=	${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.xmlrpc=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.xmlwriter=	${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.xsl=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.yaml=		1.2.0			# https://pecl.php.net/package/yaml
PHP_EXTENSION_VERSION.zip=		${PHP_BASE_VERS}
PHP_EXTENSION_VERSION.zlib=		${PHP_BASE_VERS}

.endif