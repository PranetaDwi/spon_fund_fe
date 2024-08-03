// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreateEventDataStruct extends BaseStruct {
  CreateEventDataStruct({
    String? titleEvent,
    String? typeEvent,
    String? statusEvent,
    String? description,
    int? targetParticipants,
    String? participantDescription,
    int? targetFund,
    String? sponsorDeadline,
    String? eventStartDate,
    String? eventEndDate,
    String? eventVenue,
    String? address,
    String? city,
    String? province,
    String? participantCategory,
    int? eventCategoryId,
    String? photoFile,
    String? photoFile2,
  })  : _titleEvent = titleEvent,
        _typeEvent = typeEvent,
        _statusEvent = statusEvent,
        _description = description,
        _targetParticipants = targetParticipants,
        _participantDescription = participantDescription,
        _targetFund = targetFund,
        _sponsorDeadline = sponsorDeadline,
        _eventStartDate = eventStartDate,
        _eventEndDate = eventEndDate,
        _eventVenue = eventVenue,
        _address = address,
        _city = city,
        _province = province,
        _participantCategory = participantCategory,
        _eventCategoryId = eventCategoryId,
        _photoFile = photoFile,
        _photoFile2 = photoFile2;

  // "title_event" field.
  String? _titleEvent;
  String get titleEvent => _titleEvent ?? '';
  set titleEvent(String? val) => _titleEvent = val;

  bool hasTitleEvent() => _titleEvent != null;

  // "type_event" field.
  String? _typeEvent;
  String get typeEvent => _typeEvent ?? '';
  set typeEvent(String? val) => _typeEvent = val;

  bool hasTypeEvent() => _typeEvent != null;

  // "status_event" field.
  String? _statusEvent;
  String get statusEvent => _statusEvent ?? '';
  set statusEvent(String? val) => _statusEvent = val;

  bool hasStatusEvent() => _statusEvent != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "target_participants" field.
  int? _targetParticipants;
  int get targetParticipants => _targetParticipants ?? 0;
  set targetParticipants(int? val) => _targetParticipants = val;

  void incrementTargetParticipants(int amount) =>
      targetParticipants = targetParticipants + amount;

  bool hasTargetParticipants() => _targetParticipants != null;

  // "participant_description" field.
  String? _participantDescription;
  String get participantDescription => _participantDescription ?? '';
  set participantDescription(String? val) => _participantDescription = val;

  bool hasParticipantDescription() => _participantDescription != null;

  // "target_fund" field.
  int? _targetFund;
  int get targetFund => _targetFund ?? 0;
  set targetFund(int? val) => _targetFund = val;

  void incrementTargetFund(int amount) => targetFund = targetFund + amount;

  bool hasTargetFund() => _targetFund != null;

  // "sponsor_deadline" field.
  String? _sponsorDeadline;
  String get sponsorDeadline => _sponsorDeadline ?? '';
  set sponsorDeadline(String? val) => _sponsorDeadline = val;

  bool hasSponsorDeadline() => _sponsorDeadline != null;

  // "event_start_date" field.
  String? _eventStartDate;
  String get eventStartDate => _eventStartDate ?? '';
  set eventStartDate(String? val) => _eventStartDate = val;

  bool hasEventStartDate() => _eventStartDate != null;

  // "event_end_date" field.
  String? _eventEndDate;
  String get eventEndDate => _eventEndDate ?? '';
  set eventEndDate(String? val) => _eventEndDate = val;

  bool hasEventEndDate() => _eventEndDate != null;

  // "event_venue" field.
  String? _eventVenue;
  String get eventVenue => _eventVenue ?? '';
  set eventVenue(String? val) => _eventVenue = val;

  bool hasEventVenue() => _eventVenue != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "province" field.
  String? _province;
  String get province => _province ?? '';
  set province(String? val) => _province = val;

  bool hasProvince() => _province != null;

  // "participant_category" field.
  String? _participantCategory;
  String get participantCategory => _participantCategory ?? '';
  set participantCategory(String? val) => _participantCategory = val;

  bool hasParticipantCategory() => _participantCategory != null;

  // "event_category_id" field.
  int? _eventCategoryId;
  int get eventCategoryId => _eventCategoryId ?? 0;
  set eventCategoryId(int? val) => _eventCategoryId = val;

  void incrementEventCategoryId(int amount) =>
      eventCategoryId = eventCategoryId + amount;

  bool hasEventCategoryId() => _eventCategoryId != null;

  // "photo_file" field.
  String? _photoFile;
  String get photoFile => _photoFile ?? '';
  set photoFile(String? val) => _photoFile = val;

  bool hasPhotoFile() => _photoFile != null;

  // "photo_file_2" field.
  String? _photoFile2;
  String get photoFile2 => _photoFile2 ?? '';
  set photoFile2(String? val) => _photoFile2 = val;

  bool hasPhotoFile2() => _photoFile2 != null;

  static CreateEventDataStruct fromMap(Map<String, dynamic> data) =>
      CreateEventDataStruct(
        titleEvent: data['title_event'] as String?,
        typeEvent: data['type_event'] as String?,
        statusEvent: data['status_event'] as String?,
        description: data['description'] as String?,
        targetParticipants: castToType<int>(data['target_participants']),
        participantDescription: data['participant_description'] as String?,
        targetFund: castToType<int>(data['target_fund']),
        sponsorDeadline: data['sponsor_deadline'] as String?,
        eventStartDate: data['event_start_date'] as String?,
        eventEndDate: data['event_end_date'] as String?,
        eventVenue: data['event_venue'] as String?,
        address: data['address'] as String?,
        city: data['city'] as String?,
        province: data['province'] as String?,
        participantCategory: data['participant_category'] as String?,
        eventCategoryId: castToType<int>(data['event_category_id']),
        photoFile: data['photo_file'] as String?,
        photoFile2: data['photo_file_2'] as String?,
      );

  static CreateEventDataStruct? maybeFromMap(dynamic data) => data is Map
      ? CreateEventDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title_event': _titleEvent,
        'type_event': _typeEvent,
        'status_event': _statusEvent,
        'description': _description,
        'target_participants': _targetParticipants,
        'participant_description': _participantDescription,
        'target_fund': _targetFund,
        'sponsor_deadline': _sponsorDeadline,
        'event_start_date': _eventStartDate,
        'event_end_date': _eventEndDate,
        'event_venue': _eventVenue,
        'address': _address,
        'city': _city,
        'province': _province,
        'participant_category': _participantCategory,
        'event_category_id': _eventCategoryId,
        'photo_file': _photoFile,
        'photo_file_2': _photoFile2,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title_event': serializeParam(
          _titleEvent,
          ParamType.String,
        ),
        'type_event': serializeParam(
          _typeEvent,
          ParamType.String,
        ),
        'status_event': serializeParam(
          _statusEvent,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'target_participants': serializeParam(
          _targetParticipants,
          ParamType.int,
        ),
        'participant_description': serializeParam(
          _participantDescription,
          ParamType.String,
        ),
        'target_fund': serializeParam(
          _targetFund,
          ParamType.int,
        ),
        'sponsor_deadline': serializeParam(
          _sponsorDeadline,
          ParamType.String,
        ),
        'event_start_date': serializeParam(
          _eventStartDate,
          ParamType.String,
        ),
        'event_end_date': serializeParam(
          _eventEndDate,
          ParamType.String,
        ),
        'event_venue': serializeParam(
          _eventVenue,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'province': serializeParam(
          _province,
          ParamType.String,
        ),
        'participant_category': serializeParam(
          _participantCategory,
          ParamType.String,
        ),
        'event_category_id': serializeParam(
          _eventCategoryId,
          ParamType.int,
        ),
        'photo_file': serializeParam(
          _photoFile,
          ParamType.String,
        ),
        'photo_file_2': serializeParam(
          _photoFile2,
          ParamType.String,
        ),
      }.withoutNulls;

  static CreateEventDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      CreateEventDataStruct(
        titleEvent: deserializeParam(
          data['title_event'],
          ParamType.String,
          false,
        ),
        typeEvent: deserializeParam(
          data['type_event'],
          ParamType.String,
          false,
        ),
        statusEvent: deserializeParam(
          data['status_event'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        targetParticipants: deserializeParam(
          data['target_participants'],
          ParamType.int,
          false,
        ),
        participantDescription: deserializeParam(
          data['participant_description'],
          ParamType.String,
          false,
        ),
        targetFund: deserializeParam(
          data['target_fund'],
          ParamType.int,
          false,
        ),
        sponsorDeadline: deserializeParam(
          data['sponsor_deadline'],
          ParamType.String,
          false,
        ),
        eventStartDate: deserializeParam(
          data['event_start_date'],
          ParamType.String,
          false,
        ),
        eventEndDate: deserializeParam(
          data['event_end_date'],
          ParamType.String,
          false,
        ),
        eventVenue: deserializeParam(
          data['event_venue'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        province: deserializeParam(
          data['province'],
          ParamType.String,
          false,
        ),
        participantCategory: deserializeParam(
          data['participant_category'],
          ParamType.String,
          false,
        ),
        eventCategoryId: deserializeParam(
          data['event_category_id'],
          ParamType.int,
          false,
        ),
        photoFile: deserializeParam(
          data['photo_file'],
          ParamType.String,
          false,
        ),
        photoFile2: deserializeParam(
          data['photo_file_2'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CreateEventDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreateEventDataStruct &&
        titleEvent == other.titleEvent &&
        typeEvent == other.typeEvent &&
        statusEvent == other.statusEvent &&
        description == other.description &&
        targetParticipants == other.targetParticipants &&
        participantDescription == other.participantDescription &&
        targetFund == other.targetFund &&
        sponsorDeadline == other.sponsorDeadline &&
        eventStartDate == other.eventStartDate &&
        eventEndDate == other.eventEndDate &&
        eventVenue == other.eventVenue &&
        address == other.address &&
        city == other.city &&
        province == other.province &&
        participantCategory == other.participantCategory &&
        eventCategoryId == other.eventCategoryId &&
        photoFile == other.photoFile &&
        photoFile2 == other.photoFile2;
  }

  @override
  int get hashCode => const ListEquality().hash([
        titleEvent,
        typeEvent,
        statusEvent,
        description,
        targetParticipants,
        participantDescription,
        targetFund,
        sponsorDeadline,
        eventStartDate,
        eventEndDate,
        eventVenue,
        address,
        city,
        province,
        participantCategory,
        eventCategoryId,
        photoFile,
        photoFile2
      ]);
}

CreateEventDataStruct createCreateEventDataStruct({
  String? titleEvent,
  String? typeEvent,
  String? statusEvent,
  String? description,
  int? targetParticipants,
  String? participantDescription,
  int? targetFund,
  String? sponsorDeadline,
  String? eventStartDate,
  String? eventEndDate,
  String? eventVenue,
  String? address,
  String? city,
  String? province,
  String? participantCategory,
  int? eventCategoryId,
  String? photoFile,
  String? photoFile2,
}) =>
    CreateEventDataStruct(
      titleEvent: titleEvent,
      typeEvent: typeEvent,
      statusEvent: statusEvent,
      description: description,
      targetParticipants: targetParticipants,
      participantDescription: participantDescription,
      targetFund: targetFund,
      sponsorDeadline: sponsorDeadline,
      eventStartDate: eventStartDate,
      eventEndDate: eventEndDate,
      eventVenue: eventVenue,
      address: address,
      city: city,
      province: province,
      participantCategory: participantCategory,
      eventCategoryId: eventCategoryId,
      photoFile: photoFile,
      photoFile2: photoFile2,
    );
