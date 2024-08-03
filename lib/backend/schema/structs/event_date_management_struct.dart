// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventDateManagementStruct extends BaseStruct {
  EventDateManagementStruct({
    DateTime? eventStartDate,
    DateTime? eventEndDate,
    DateTime? sponsorDeadline,
  })  : _eventStartDate = eventStartDate,
        _eventEndDate = eventEndDate,
        _sponsorDeadline = sponsorDeadline;

  // "eventStartDate" field.
  DateTime? _eventStartDate;
  DateTime? get eventStartDate => _eventStartDate;
  set eventStartDate(DateTime? val) => _eventStartDate = val;

  bool hasEventStartDate() => _eventStartDate != null;

  // "eventEndDate" field.
  DateTime? _eventEndDate;
  DateTime? get eventEndDate => _eventEndDate;
  set eventEndDate(DateTime? val) => _eventEndDate = val;

  bool hasEventEndDate() => _eventEndDate != null;

  // "sponsorDeadline" field.
  DateTime? _sponsorDeadline;
  DateTime? get sponsorDeadline => _sponsorDeadline;
  set sponsorDeadline(DateTime? val) => _sponsorDeadline = val;

  bool hasSponsorDeadline() => _sponsorDeadline != null;

  static EventDateManagementStruct fromMap(Map<String, dynamic> data) =>
      EventDateManagementStruct(
        eventStartDate: data['eventStartDate'] as DateTime?,
        eventEndDate: data['eventEndDate'] as DateTime?,
        sponsorDeadline: data['sponsorDeadline'] as DateTime?,
      );

  static EventDateManagementStruct? maybeFromMap(dynamic data) => data is Map
      ? EventDateManagementStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'eventStartDate': _eventStartDate,
        'eventEndDate': _eventEndDate,
        'sponsorDeadline': _sponsorDeadline,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'eventStartDate': serializeParam(
          _eventStartDate,
          ParamType.DateTime,
        ),
        'eventEndDate': serializeParam(
          _eventEndDate,
          ParamType.DateTime,
        ),
        'sponsorDeadline': serializeParam(
          _sponsorDeadline,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static EventDateManagementStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      EventDateManagementStruct(
        eventStartDate: deserializeParam(
          data['eventStartDate'],
          ParamType.DateTime,
          false,
        ),
        eventEndDate: deserializeParam(
          data['eventEndDate'],
          ParamType.DateTime,
          false,
        ),
        sponsorDeadline: deserializeParam(
          data['sponsorDeadline'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'EventDateManagementStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventDateManagementStruct &&
        eventStartDate == other.eventStartDate &&
        eventEndDate == other.eventEndDate &&
        sponsorDeadline == other.sponsorDeadline;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([eventStartDate, eventEndDate, sponsorDeadline]);
}

EventDateManagementStruct createEventDateManagementStruct({
  DateTime? eventStartDate,
  DateTime? eventEndDate,
  DateTime? sponsorDeadline,
}) =>
    EventDateManagementStruct(
      eventStartDate: eventStartDate,
      eventEndDate: eventEndDate,
      sponsorDeadline: sponsorDeadline,
    );
