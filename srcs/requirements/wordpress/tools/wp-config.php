<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

define('WP_CACHE', true);
// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'cyuuki' );

/** Database password */
define( 'DB_PASSWORD', '123' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define('WP_REDIS_HOST', 'redis' );
define('WP_REDIS_PORT', '6379' );
define( 'WP_CACHE_KEY_SALT', 'cyuuki.42.fr' );
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'g9obcRQ/R+;+Zg}l44GY&]3>U6ONRU:8j@+&=%$}qZicDS}k)Pu5lkViY0#e2@Y;' );
define( 'SECURE_AUTH_KEY',   'f~p:m:dKe_i1xkhf24)FsTcuT:k+_l%o:HRk4cDv)k=C|sB[U-6N>YQ#aX0 sD f' );
define( 'LOGGED_IN_KEY',     'K?>0,#GV%.V:r:(WG^fxuos;MpCC)n5[A~2tflOaCN[Nl^4Y`WZ&0Zto_<0__C$N' );
define( 'NONCE_KEY',         '>TW]Bn>p| T?KttVT_}+EjvpOMtY_A)d0rAt5]a!qN_U~,?l_2d8^p]_+HJq~&f?' );
define( 'AUTH_SALT',         '2fvMWSb0EC;0FRVBj-FwCv>qY/58B5nLiqB^qs$]>dDw!W{o*Gy4!?/H4&3 |Kst' );
define( 'SECURE_AUTH_SALT',  '`6t6^nOsYY5bEuHx>|LUd$EEtqSoqZpTkwyH~ X%x,!t74|bbQ$}mKp{(X.:E2=l' );
define( 'LOGGED_IN_SALT',    'CCgQ8))_q8M8VSKZa{n.) 47tA6*g%&B^J?b(n:.8c^rP@2*x8/md1hoMKt|$ _J' );
define( 'NONCE_SALT',        'pdtB%&NNyWc|x9V8*HkALTlc[r .N/aT8wJ+JhDDv-j~8c pl8^7aDp-=cin,rC$' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );


/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
