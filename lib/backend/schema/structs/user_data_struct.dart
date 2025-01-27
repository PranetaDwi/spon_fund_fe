// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDataStruct extends BaseStruct {
  UserDataStruct({
    String? token,
    String? userName,
    String? provinceID,
    int? userID,
    String? role,
    String? provinceIDCreate,
    String? provinceNameCreate,
  })  : _token = token,
        _userName = userName,
        _provinceID = provinceID,
        _userID = userID,
        _role = role,
        _provinceIDCreate = provinceIDCreate,
        _provinceNameCreate = provinceNameCreate;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "provinceID" field.
  String? _provinceID;
  String get provinceID => _provinceID ?? '';
  set provinceID(String? val) => _provinceID = val;

  bool hasProvinceID() => _provinceID != null;

  // "userID" field.
  int? _userID;
  int get userID => _userID ?? 0;
  set userID(int? val) => _userID = val;

  void incrementUserID(int amount) => userID = userID + amount;

  bool hasUserID() => _userID != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "provinceIDCreate" field.
  String? _provinceIDCreate;
  String get provinceIDCreate => _provinceIDCreate ?? '11';
  set provinceIDCreate(String? val) => _provinceIDCreate = val;

  bool hasProvinceIDCreate() => _provinceIDCreate != null;

  // "provinceNameCreate" field.
  String? _provinceNameCreate;
  String get provinceNameCreate => _provinceNameCreate ?? '';
  set provinceNameCreate(String? val) => _provinceNameCreate = val;

  bool hasProvinceNameCreate() => _provinceNameCreate != null;

  static UserDataStruct fromMap(Map<String, dynamic> data) => UserDataStruct(
        token: data['token'] as String?,
        userName: data['userName'] as String?,
        provinceID: data['provinceID'] as String?,
        userID: castToType<int>(data['userID']),
        role: data['role'] as String?,
        provinceIDCreate: data['provinceIDCreate'] as String?,
        provinceNameCreate: data['provinceNameCreate'] as String?,
      );

  static UserDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'token': _token,
        'userName': _userName,
        'provinceID': _provinceID,
        'userID': _userID,
        'role': _role,
        'provinceIDCreate': _provinceIDCreate,
        'provinceNameCreate': _provinceNameCreate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'provinceID': serializeParam(
          _provinceID,
          ParamType.String,
        ),
        'userID': serializeParam(
          _userID,
          ParamType.int,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'provinceIDCreate': serializeParam(
          _provinceIDCreate,
          ParamType.String,
        ),
        'provinceNameCreate': serializeParam(
          _provinceNameCreate,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDataStruct(
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
        provinceID: deserializeParam(
          data['provinceID'],
          ParamType.String,
          false,
        ),
        userID: deserializeParam(
          data['userID'],
          ParamType.int,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        provinceIDCreate: deserializeParam(
          data['provinceIDCreate'],
          ParamType.String,
          false,
        ),
        provinceNameCreate: deserializeParam(
          data['provinceNameCreate'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserDataStruct &&
        token == other.token &&
        userName == other.userName &&
        provinceID == other.provinceID &&
        userID == other.userID &&
        role == other.role &&
        provinceIDCreate == other.provinceIDCreate &&
        provinceNameCreate == other.provinceNameCreate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        token,
        userName,
        provinceID,
        userID,
        role,
        provinceIDCreate,
        provinceNameCreate
      ]);
}

UserDataStruct createUserDataStruct({
  String? token,
  String? userName,
  String? provinceID,
  int? userID,
  String? role,
  String? provinceIDCreate,
  String? provinceNameCreate,
}) =>
    UserDataStruct(
      token: token,
      userName: userName,
      provinceID: provinceID,
      userID: userID,
      role: role,
      provinceIDCreate: provinceIDCreate,
      provinceNameCreate: provinceNameCreate,
    );
