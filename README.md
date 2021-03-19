# flutter_cipher

A Flutter encryption class library

## Getting Started

Compatible with iOS and Android

RSA:
    Key format: PKCS#1

example:

    Asymmetric rsa = Cipher.getAsymmetricInstance(RSA(publicKey: publicKey, privateKey: privateKey));

    //encryption
    var encryptPublic = rsa.encryptPublic(content);
    var encryptPrivate = rsa.encryptPrivate(content);

    //decrypt
    var decryptPublic = rsa.decryptPublic(encryptPrivate);
    var decryptPrivate = rsa.decryptPrivate(encryptPublic);




AES:

example:

    Key key = Key.fromUtf8('32 length key................');
    IV iv = IV.fromLength(16);

    Symmetry aes = Cipher.getSymmetryInstance(AES(key, iv)));

    var encrypted = aes.encrypt(bytes);
    var encrypted = aes.encryptString(str);

    var content = aes.decrypt(encrypted);
    var content = aes.decrypt2String(encrypted);




Finally, we would like to thank leocavalcante, as the main content of this library is derived from the encrypt library.