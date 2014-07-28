package nodejs.crypto;


/**
 * 
 */
class CryptoAlgorithm
{
	/**
	 * 
	 */
	static public var SHA1   : String = "sha1";
	
	/**
	 * 
	 */
	static public var MD5    : String = "md5";
	
	/**
	 * 
	 */
	static public var SHA256 : String = "sha256";
	
	/**
	 * 
	 */
	static public var SHA512 : String = "sha512";
	
}

/**
 * 
 */
extern class CredentialOption
{
	
	/**
	 *  A string or buffer holding the PFX or PKCS12 encoded private key, certificate and CA certificates
	 */
	var pfx : String;
	
	/**
	 *  A string holding the PEM encoded private key
	 */
	var key : String;
	
	/**
	 *  A string of passphrase for the private key or pfx
	 */
	var passphrase : String;
	
	/**
	 *  A string holding the PEM encoded certificate
	 */
	var cert : String;
	
	/**
	 * Either a string or list of strings of PEM encoded CA certificates to trust.
	 * If no 'ca' details are given, then node.js will use the default publicly trusted list of CAs as given in
	 * http://mxr.mozilla.org/mozilla/source/security/nss/lib/ckfw/builtins/certdata.txt.
	 */	
	var ca : Array<String>;
	
	/**
	 *  Either a string or list of strings of PEM encoded CRLs (Certificate Revocation List)
	 */
	var crl : Array<String>;
	
	/**
	 *  A string describing the ciphers to use or exclude. Consult http://www.openssl.org/docs/apps/ciphers.html#CIPHER_LIST_FORMAT for details on the format.
	 */
	var ciphers : String;
	
}

/**
 * Use require('crypto') to access this module.
 * The crypto module offers a way of encapsulating secure credentials to be used as part of a secure HTTPS net or http connection.
 * It also offers a set of wrappers for OpenSSL's hash, hmac, cipher, decipher, sign and verify methods.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('crypto'))")
extern class Crypto
{
	/**
	 * The default encoding to use for functions that can take either strings or buffers.
	 * The default value is 'buffer', which makes it default to using Buffer objects.
	 * This is here to make the crypto module more easily compatible with legacy programs that expected 'binary' to be the default encoding.
	 * Note that new programs will probably expect buffers, so only use this as a temporary measure.
	 */
	static var DEFAULT_ENCODING : String;

	/**
	 * Returns an array with the names of the supported ciphers.
	 * @return
	 */
	function getCiphers() : Array<String>;
	
	/**
	 * Returns an array with the names of the supported hash algorithms.
	 * @return
	 */
	function getHashes() : Array<String>;
	
	/**
	 * Creates a credentials object, with the optional details being a dictionary with keys:
	 * @param	details
	 * @return
	 */
	function createCredentials(details : CredentialOption):Dynamic;
	
	/**
	 * Creates and returns a hash object, a cryptographic hash with the given algorithm which can be used to generate hash digests.
	 * algorithm is dependent on the available algorithms supported by the version of OpenSSL on the platform.
	 * Examples are 'sha1', 'md5', 'sha256', 'sha512', etc. 
	 * On recent releases, openssl list-message-digest-algorithms will display the available digest algorithms.
	 * @param	algorithm
	 * @return
	 */
	function createHash(algorithm : String) : Dynamic;
	
	
	var createHmac				: Dynamic;//			(algorithm, key)
	var createCipher			: Dynamic;//			(algorithm, password)
	var createCipheriv			: Dynamic;//			(algorithm, key, iv)
	var createDecipher			: Dynamic;//			(algorithm, password)
	var createDecipheriv		: Dynamic;//			(algorithm, key, iv)
	var createSign				: Dynamic;//			(algorithm)
	var createVerify			: Dynamic;//			(algorithm)
	var createDiffieHellman		: Dynamic;//			(prime_length)
	//var createDiffieHellman		: Dynamic;//			(prime, [encoding])
	var getDiffieHellman		: Dynamic;//			(group_name)
	var pbkdf2					: Dynamic;//			(password, salt, iterations, keylen, callback)
	var pbkdf2Sync				: Dynamic;//			(password, salt, iterations, keylen)
	var randomBytes				: Dynamic;//			(size, [callback])
	var pseudoRandomBytes		: Dynamic;//			(size, [callback])
	
	
	
}