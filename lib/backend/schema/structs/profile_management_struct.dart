// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileManagementStruct extends BaseStruct {
  ProfileManagementStruct({
    String? fullName,
    String? photoFile,
    String? email,
    String? phone,
    String? name,
    String? address,
    String? province,
    String? city,
    String? description,
  })  : _fullName = fullName,
        _photoFile = photoFile,
        _email = email,
        _phone = phone,
        _name = name,
        _address = address,
        _province = province,
        _city = city,
        _description = description;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;
  bool hasFullName() => _fullName != null;

  // "photo_file" field.
  String? _photoFile;
  String get photoFile => _photoFile ?? '';
  set photoFile(String? val) => _photoFile = val;
  bool hasPhotoFile() => _photoFile != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;
  bool hasPhone() => _phone != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "province" field.
  String? _province;
  String get province => _province ?? '';
  set province(String? val) => _province = val;
  bool hasProvince() => _province != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  static ProfileManagementStruct fromMap(Map<String, dynamic> data) =>
      ProfileManagementStruct(
        fullName: data['full_name'] as String?,
        photoFile: data['photo_file'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        name: data['name'] as String?,
        address: data['address'] as String?,
        province: data['province'] as String?,
        city: data['city'] as String?,
        description: data['description'] as String?,
      );

  static ProfileManagementStruct? maybeFromMap(dynamic data) => data is Map
      ? ProfileManagementStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'full_name': _fullName,
        'photo_file': _photoFile,
        'email': _email,
        'phone': _phone,
        'name': _name,
        'address': _address,
        'province': _province,
        'city': _city,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'full_name': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'photo_file': serializeParam(
          _photoFile,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'province': serializeParam(
          _province,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProfileManagementStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProfileManagementStruct(
        fullName: deserializeParam(
          data['full_name'],
          ParamType.String,
          false,
        ),
        photoFile: deserializeParam(
          data['photo_file'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        province: deserializeParam(
          data['province'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProfileManagementStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProfileManagementStruct &&
        fullName == other.fullName &&
        photoFile == other.photoFile &&
        email == other.email &&
        phone == other.phone &&
        name == other.name &&
        address == other.address &&
        province == other.province &&
        city == other.city &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([
        fullName,
        photoFile,
        email,
        phone,
        name,
        address,
        province,
        city,
        description
      ]);
}

ProfileManagementStruct createProfileManagementStruct({
  String? fullName,
  String? photoFile,
  String? email,
  String? phone,
  String? name,
  String? address,
  String? province,
  String? city,
  String? description,
}) =>
    ProfileManagementStruct(
      fullName: fullName,
      photoFile: photoFile,
      email: email,
      phone: phone,
      name: name,
      address: address,
      province: province,
      city: city,
      description: description,
    );
