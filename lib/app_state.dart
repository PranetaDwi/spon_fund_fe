import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_userDataState')) {
        try {
          final serializedData = prefs.getString('ff_userDataState') ?? '{}';
          _userDataState =
              UserDataStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_ProfileManagementState')) {
        try {
          final serializedData =
              prefs.getString('ff_ProfileManagementState') ?? '{}';
          _ProfileManagementState = ProfileManagementStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  UserDataStruct _userDataState =
      UserDataStruct.fromSerializableMap(jsonDecode('{}'));
  UserDataStruct get userDataState => _userDataState;
  set userDataState(UserDataStruct value) {
    _userDataState = value;
    prefs.setString('ff_userDataState', value.serialize());
  }

  void updateUserDataStateStruct(Function(UserDataStruct) updateFn) {
    updateFn(_userDataState);
    prefs.setString('ff_userDataState', _userDataState.serialize());
  }

  ProfileManagementStruct _ProfileManagementState = ProfileManagementStruct();
  ProfileManagementStruct get ProfileManagementState => _ProfileManagementState;
  set ProfileManagementState(ProfileManagementStruct value) {
    _ProfileManagementState = value;
    prefs.setString('ff_ProfileManagementState', value.serialize());
  }

  void updateProfileManagementStateStruct(
      Function(ProfileManagementStruct) updateFn) {
    updateFn(_ProfileManagementState);
    prefs.setString(
        'ff_ProfileManagementState', _ProfileManagementState.serialize());
  }

  int _eventId = 0;
  int get eventId => _eventId;
  set eventId(int value) {
    _eventId = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
