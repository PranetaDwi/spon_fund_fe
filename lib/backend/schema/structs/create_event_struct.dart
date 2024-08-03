// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreateEventStruct extends BaseStruct {
  CreateEventStruct({
    List<String>? categoryEvent,
    int? eventId,
  })  : _categoryEvent = categoryEvent,
        _eventId = eventId;

  // "CategoryEvent" field.
  List<String>? _categoryEvent;
  List<String> get categoryEvent => _categoryEvent ?? const [];
  set categoryEvent(List<String>? val) => _categoryEvent = val;

  void updateCategoryEvent(Function(List<String>) updateFn) {
    updateFn(_categoryEvent ??= []);
  }

  bool hasCategoryEvent() => _categoryEvent != null;

  // "eventId" field.
  int? _eventId;
  int get eventId => _eventId ?? 0;
  set eventId(int? val) => _eventId = val;

  void incrementEventId(int amount) => eventId = eventId + amount;

  bool hasEventId() => _eventId != null;

  static CreateEventStruct fromMap(Map<String, dynamic> data) =>
      CreateEventStruct(
        categoryEvent: getDataList(data['CategoryEvent']),
        eventId: castToType<int>(data['eventId']),
      );

  static CreateEventStruct? maybeFromMap(dynamic data) => data is Map
      ? CreateEventStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CategoryEvent': _categoryEvent,
        'eventId': _eventId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CategoryEvent': serializeParam(
          _categoryEvent,
          ParamType.String,
          isList: true,
        ),
        'eventId': serializeParam(
          _eventId,
          ParamType.int,
        ),
      }.withoutNulls;

  static CreateEventStruct fromSerializableMap(Map<String, dynamic> data) =>
      CreateEventStruct(
        categoryEvent: deserializeParam<String>(
          data['CategoryEvent'],
          ParamType.String,
          true,
        ),
        eventId: deserializeParam(
          data['eventId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CreateEventStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CreateEventStruct &&
        listEquality.equals(categoryEvent, other.categoryEvent) &&
        eventId == other.eventId;
  }

  @override
  int get hashCode => const ListEquality().hash([categoryEvent, eventId]);
}

CreateEventStruct createCreateEventStruct({
  int? eventId,
}) =>
    CreateEventStruct(
      eventId: eventId,
    );
