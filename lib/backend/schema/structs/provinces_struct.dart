// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProvincesStruct extends BaseStruct {
  ProvincesStruct({
    List<ProvinceStruct>? data,
  }) : _data = data;

  // "data" field.
  List<ProvinceStruct>? _data;
  List<ProvinceStruct> get data => _data ?? const [];
  set data(List<ProvinceStruct>? val) => _data = val;

  void updateData(Function(List<ProvinceStruct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

  static ProvincesStruct fromMap(Map<String, dynamic> data) => ProvincesStruct(
        data: getStructList(
          data['data'],
          ProvinceStruct.fromMap,
        ),
      );

  static ProvincesStruct? maybeFromMap(dynamic data) => data is Map
      ? ProvincesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ProvincesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProvincesStruct(
        data: deserializeStructParam<ProvinceStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: ProvinceStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProvincesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProvincesStruct && listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

ProvincesStruct createProvincesStruct() => ProvincesStruct();
