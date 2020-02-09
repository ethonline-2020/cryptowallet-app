import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

// final LocalAuthentication auth = LocalAuthentication();

Future<bool> checkBiometrics(auth) async {
  bool canCheckBiometrics;
  try {
    canCheckBiometrics = await auth.canCheckBiometrics;
  } on PlatformException catch (e) {
    print(e);
  }
  return canCheckBiometrics;
}

Future<List<BiometricType>> getAvailableBiometrics(auth) async {
  List<BiometricType> availableBiometrics;
  try {
    availableBiometrics = await auth.getAvailableBiometrics();
  } on PlatformException catch (e) {
    print(e);
  }
  return availableBiometrics;
}

Future<bool> authenticate(auth) async {
  bool authenticated = false;
  try {
    authenticated = await auth.authenticateWithBiometrics(
        localizedReason: 'Scan your fingerprint to authenticate',
        useErrorDialogs: true,
        stickyAuth: true);
  } on PlatformException catch (e) {
    print(e);
  }
  return authenticated;
}

void cancelAuthentication(auth) {
  auth.stopAuthentication();
}
