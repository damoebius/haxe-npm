package nodejs.crypto;

/**
 * The class for creating Diffie-Hellman key exchanges.
 * Returned by crypto.createDiffieHellman.
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
extern class DiffieHellman
{
	var generateKeys			: Dynamic;//			([encoding])
	var computeSecret			: Dynamic;//			(other_public_key, [input_encoding], [output_encoding])
	var getPrime				: Dynamic;//			([encoding])
	var getGenerator			: Dynamic;//			([encoding])
	var getPublicKey			: Dynamic;//			([encoding])
	var getPrivateKey			: Dynamic;//			([encoding])
	var setPublicKey			: Dynamic;//			(public_key, [encoding])
	var setPrivateKey			: Dynamic;//			(private_key, [encoding])

		
}