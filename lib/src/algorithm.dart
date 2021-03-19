part of flutter_cipher;

/// Interface for the Algorithms.
abstract class Symmetry {
  /// Encrypt [bytes].
  Encrypted encrypt(Uint8List bytes, {required IV iv});

  Encrypted encryptString(String input, {required IV iv});

  /// Decrypt [encrypted] value.
  Uint8List decrypt(Encrypted encrypted, {required IV iv});

  String decrypt2String(Encrypted encrypted, {required IV iv});
}

abstract class Asymmetric {
  /// Encrypt [String].
  Encrypted encryptPublic(String input, {required IV iv});

  Encrypted encryptPrivate(String input, {required IV iv});

  /// Decrypt [encrypted] value.
  String decryptPublic(Encrypted encrypted, {required IV iv});

  String decryptPrivate(Encrypted encrypted, {required IV iv});
}
