import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class FundationAuthUser {
  FundationAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<FundationAuthUser> fundationAuthUserSubject =
    BehaviorSubject.seeded(FundationAuthUser(loggedIn: false));
Stream<FundationAuthUser> fundationAuthUserStream() => fundationAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
