import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Authentication Group Code

class AuthenticationGroup {
  static String getBaseUrl() => 'https://devfundation.propertio.id/api/v1';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
  static LogoutCall logoutCall = LogoutCall();
  static TrialGetKategoriCall trialGetKategoriCall = TrialGetKategoriCall();
  static RegisterEntreprenuerCall registerEntreprenuerCall =
      RegisterEntreprenuerCall();
  static PostMitraCall postMitraCall = PostMitraCall();
  static RegisterOrganizerCall registerOrganizerCall = RegisterOrganizerCall();
  static PostOrganizationCall postOrganizationCall = PostOrganizationCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '$baseUrl/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'password': password,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.token''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.full_name''',
      ));
  String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user.role''',
      ));
}

class LogoutCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Logout',
      apiUrl: '$baseUrl/logout',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TrialGetKategoriCall {
  Future<ApiCallResponse> call({
    String? authTokenAdmin = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Trial Get Kategori',
      apiUrl: '$baseUrl/managemen-categori-event/list-categori-event',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authTokenAdmin',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? dataKategories(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class RegisterEntreprenuerCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? fullName = '',
    String? phone = '',
    String? password = '',
    String? passwordConfirmation = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Register Entreprenuer',
      apiUrl: '$baseUrl/auth/register-entrepreneur',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'full_name': fullName,
        'phone': phone,
        'password': password,
        'password_confirmation': passwordConfirmation,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? userEntrepreneurID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.user.id''',
      ));
}

class PostMitraCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? description = '',
    String? address = '',
    String? city = '',
    String? province = '',
    FFUploadedFile? photoFile,
    int? userId,
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post Mitra',
      apiUrl: '$baseUrl/auth/mitra-enrollment/$userId',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'name': name,
        'province': province,
        'city': city,
        'address': address,
        'description': description,
        'photo_file': photoFile,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegisterOrganizerCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? fullName = '',
    String? password = '',
    String? passwordConfirmation = '',
    String? phone = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Register Organizer',
      apiUrl: '$baseUrl/auth/register-organizer',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'full_name': fullName,
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
        'phone': phone,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? userRegistrationId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.user.id''',
      ));
}

class PostOrganizationCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? description = '',
    String? address = '',
    String? province = '',
    String? city = '',
    FFUploadedFile? photoFile,
    int? userId,
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post Organization',
      apiUrl: '$baseUrl/auth/organization-enrollment/$userId',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'name': name,
        'description': description,
        'address': address,
        'province': province,
        'city': city,
        'photo_file': photoFile,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Authentication Group Code

/// Start Get API Province Group Code

class GetAPIProvinceGroup {
  static String getBaseUrl() =>
      'https://fahrurozi.github.io/api-wilayah-indonesia/api';
  static Map<String, String> headers = {};
  static GetProvinceCall getProvinceCall = GetProvinceCall();
  static GetCityCall getCityCall = GetCityCall();
}

class GetProvinceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = GetAPIProvinceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Province',
      apiUrl: '$baseUrl/provinces.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? provinceID(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? provinceName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? provinceIDAndName(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class GetCityCall {
  Future<ApiCallResponse> call({
    String? provinceID = '',
  }) async {
    final baseUrl = GetAPIProvinceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get City',
      apiUrl: '$baseUrl/regencies/$provinceID.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? cityID(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cityName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End Get API Province Group Code

/// Start Profile Management Group Code

class ProfileManagementGroup {
  static String getBaseUrl({
    String? authToken = '',
  }) =>
      'devfundation.propertio.id/api/v1';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [auth_token]',
  };
  static GetProfileCall getProfileCall = GetProfileCall();
  static PostUpdateFullNameCall postUpdateFullNameCall =
      PostUpdateFullNameCall();
  static PostUpdateEmailCall postUpdateEmailCall = PostUpdateEmailCall();
  static PostUpdatePhoneCall postUpdatePhoneCall = PostUpdatePhoneCall();
  static PostUpdatePasswordCall postUpdatePasswordCall =
      PostUpdatePasswordCall();
  static PostUpdateOrganisasiCall postUpdateOrganisasiCall =
      PostUpdateOrganisasiCall();
  static PostUpdateMitraCall postUpdateMitraCall = PostUpdateMitraCall();
}

class GetProfileCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = ProfileManagementGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Profile ',
      apiUrl: '$baseUrl/profile',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostUpdateFullNameCall {
  Future<ApiCallResponse> call({
    String? fullName = '',
    String? authToken = '',
  }) async {
    final baseUrl = ProfileManagementGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Post Update Full Name',
      apiUrl: '$baseUrl/profile/update-full-name',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'full_name': fullName,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? fullNameResponse(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.full_name''',
      ));
}

class PostUpdateEmailCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? authToken = '',
  }) async {
    final baseUrl = ProfileManagementGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Post Update Email',
      apiUrl: '$baseUrl/profile/update-email',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'email': email,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostUpdatePhoneCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? authToken = '',
  }) async {
    final baseUrl = ProfileManagementGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Post Update Phone',
      apiUrl: '$baseUrl/profile/update-phone',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'phone': phone,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostUpdatePasswordCall {
  Future<ApiCallResponse> call({
    String? oldPassword = '',
    String? newPassword = '',
    String? newPasswordConfirmation = '',
    String? authToken = '',
  }) async {
    final baseUrl = ProfileManagementGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Post Update Password',
      apiUrl: '$baseUrl/profile/update-password',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'old_password': oldPassword,
        'new_password': newPassword,
        'new_password_confirmation': newPasswordConfirmation,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostUpdateOrganisasiCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? description = '',
    String? address = '',
    String? province = '',
    String? city = '',
    FFUploadedFile? photoFile,
    String? authToken = '',
  }) async {
    final baseUrl = ProfileManagementGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Post Update Organisasi',
      apiUrl: '$baseUrl/update-organization-data',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'name': name,
        'description': description,
        'address': address,
        'province': province,
        'city': city,
        'photo_file': photoFile,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostUpdateMitraCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? description = '',
    String? address = '',
    String? province = '',
    String? city = '',
    FFUploadedFile? photoFile,
    String? authToken = '',
  }) async {
    final baseUrl = ProfileManagementGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Post Update Mitra',
      apiUrl: '$baseUrl/update-mitra-data',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'name': name,
        'description': description,
        'province': province,
        'city': city,
        'photo_file': photoFile,
        'address': address,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Profile Management Group Code

/// Start Common Group Code

class CommonGroup {
  static String getBaseUrl() => 'https://devfundation.propertio.id/api/v1';
  static Map<String, String> headers = {};
  static GetEventPopulerCall getEventPopulerCall = GetEventPopulerCall();
  static GetDetailEventCall getDetailEventCall = GetDetailEventCall();
  static GetOverviewAllEventCall getOverviewAllEventCall =
      GetOverviewAllEventCall();
}

class GetEventPopulerCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = CommonGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Event Populer',
      apiUrl: '$baseUrl/events/event-populer-overview',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? eventPopulerLists(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class GetDetailEventCall {
  Future<ApiCallResponse> call({
    int? eventId,
  }) async {
    final baseUrl = CommonGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Detail Event',
      apiUrl: '$baseUrl/events/event-detail/$eventId/detail-information',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic detailEvent(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class GetOverviewAllEventCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = CommonGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Overview All Event',
      apiUrl: '$baseUrl/events/event-all-overview',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? getOverviewAllEvent(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

/// End Common Group Code

/// Start Event Managemen Organizer Group Code

class EventManagemenOrganizerGroup {
  static String getBaseUrl({
    String? authToken = '',
  }) =>
      'devfundation.propertio.id/api/v1';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [auth_token]',
  };
  static PostEventInformationCall postEventInformationCall =
      PostEventInformationCall();
  static PostEventPlacementCall postEventPlacementCall =
      PostEventPlacementCall();
  static PostEventFundCall postEventFundCall = PostEventFundCall();
  static PostEventKontraprestasiCall postEventKontraprestasiCall =
      PostEventKontraprestasiCall();
  static PostEventBudlingCall postEventBudlingCall = PostEventBudlingCall();
  static GetMyPreviewEventCall getMyPreviewEventCall = GetMyPreviewEventCall();
  static DeleteMyEventCall deleteMyEventCall = DeleteMyEventCall();
  static GetDetailEventForUpdateCall getDetailEventForUpdateCall =
      GetDetailEventForUpdateCall();
  static UpdateEventCall updateEventCall = UpdateEventCall();
  static UpdateKontraprestasiCall updateKontraprestasiCall =
      UpdateKontraprestasiCall();
}

class PostEventInformationCall {
  Future<ApiCallResponse> call({
    String? title = '',
    String? typeEvent = '',
    String? statusEvent = '',
    String? description = '',
    String? targetParticipants = '',
    String? participantDescription = '',
    int? eventCategoryId,
    FFUploadedFile? photoFile,
    String? participantCategory = '',
    String? authToken = '',
  }) async {
    final baseUrl = EventManagemenOrganizerGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Post Event Information',
      apiUrl: '$baseUrl/events/create-event/post-event-information',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'title': title,
        'type_event': typeEvent,
        'status_event': statusEvent,
        'target_participants': targetParticipants,
        'participant_description': participantDescription,
        'event_category_id[]': eventCategoryId,
        'photo_file[]': photoFile,
        'participant_category[]': participantCategory,
        'description': description,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? newEventID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.event.id''',
      ));
}

class PostEventPlacementCall {
  Future<ApiCallResponse> call({
    int? eventId,
    String? eventStartDate = '',
    String? eventEndDate = '',
    String? eventVenue = '',
    String? address = '',
    String? city = '',
    String? province = '',
    String? authToken = '',
  }) async {
    final baseUrl = EventManagemenOrganizerGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Post Event Placement',
      apiUrl: '$baseUrl/events/create-event/post-event-placement/$eventId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'event_start_date': eventStartDate,
        'event_end_date': eventEndDate,
        'event_venue': eventVenue,
        'address': address,
        'province': province,
        'city': city,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostEventFundCall {
  Future<ApiCallResponse> call({
    int? eventId,
    int? targetFund,
    String? sponsorDeadline = '',
    String? authToken = '',
  }) async {
    final baseUrl = EventManagemenOrganizerGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Post Event Fund',
      apiUrl: '$baseUrl/events/create-event/post-event-fund/$eventId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'target_fund': targetFund,
        'sponsor_deadline': sponsorDeadline,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostEventKontraprestasiCall {
  Future<ApiCallResponse> call({
    String? title = '',
    int? minSponsor,
    int? maxSponsor,
    int? iconPhotoKontraprestasiId,
    int? eventId,
    String? feedback = '',
    String? authToken = '',
  }) async {
    final baseUrl = EventManagemenOrganizerGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Post Event Kontraprestasi',
      apiUrl: '$baseUrl/events/create-event/post-kontraprestasi/$eventId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'title': title,
        'min_sponsor': minSponsor,
        'max_sponsor': maxSponsor,
        'icon_photo_kontraprestasi_id': iconPhotoKontraprestasiId,
        'feedback': feedback,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostEventBudlingCall {
  Future<ApiCallResponse> call({
    String? titleEvent = '',
    String? typeEvent = '',
    String? statusEvent = '',
    String? description = '',
    int? targetParticipants,
    String? participantDescription = '',
    FFUploadedFile? photoFile,
    int? eventCategoryId,
    int? targetFund,
    String? sponsorDeadline = '',
    String? eventStartDate = '',
    String? eventEndDate = '',
    String? eventVenue = '',
    String? address = '',
    String? city = '',
    String? province = '',
    String? participantCategory = '',
    String? authToken = '',
  }) async {
    final baseUrl = EventManagemenOrganizerGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Post Event Budling',
      apiUrl: '$baseUrl/events/create-event/post-event',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'title_event': titleEvent,
        'type_event': typeEvent,
        'status_event': statusEvent,
        'target_participants': targetParticipants,
        'description': description,
        'participant_description': participantDescription,
        'photo_file[]': photoFile,
        'event_category_id[]': eventCategoryId,
        'target_fund': targetFund,
        'sponsor_deadline': sponsorDeadline,
        'event_start_date': eventStartDate,
        'event_end_date': eventEndDate,
        'event_venue': eventVenue,
        'address': address,
        'city': city,
        'province': province,
        'participant_category[]': participantCategory,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? eventId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.event_fund.event_id''',
      ));
}

class GetMyPreviewEventCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = EventManagemenOrganizerGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get My Preview Event',
      apiUrl: '$baseUrl/events/my-event-lists',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? myEvents(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class DeleteMyEventCall {
  Future<ApiCallResponse> call({
    int? eventId,
    String? authToken = '',
  }) async {
    final baseUrl = EventManagemenOrganizerGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete My Event',
      apiUrl: '$baseUrl/events/delete-event/$eventId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDetailEventForUpdateCall {
  Future<ApiCallResponse> call({
    int? eventId,
    String? authToken = '',
  }) async {
    final baseUrl = EventManagemenOrganizerGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Detail Event for Update',
      apiUrl: '$baseUrl/events/update-event/detail-event/$eventId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic getDetailEventForUpdate(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? getTitle(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.title''',
      ));
  dynamic eventStartDate(dynamic response) => getJsonField(
        response,
        r'''$.data.event_start_date''',
      );
  dynamic eventEndDate(dynamic response) => getJsonField(
        response,
        r'''$.data.event_end_date''',
      );
  dynamic sponsorDeadline(dynamic response) => getJsonField(
        response,
        r'''$.data.sponsor_deadline''',
      );
}

class UpdateEventCall {
  Future<ApiCallResponse> call({
    String? titleEvent = '',
    String? typeEvent = '',
    String? statusEvent = '',
    String? description = '',
    int? targetParticipants,
    String? participantCategory = '',
    String? participantDescription = '',
    FFUploadedFile? photoFile,
    int? eventCategoryId,
    int? targetFund,
    String? sponsorDeadline = '',
    String? eventStartDate = '',
    String? eventEndDate = '',
    String? eventVenue = '',
    String? address = '',
    String? city = '',
    String? province = '',
    int? eventId,
    String? authToken = '',
  }) async {
    final baseUrl = EventManagemenOrganizerGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update Event',
      apiUrl: '$baseUrl/events/update-event/$eventId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'title_event': titleEvent,
        'type_event': typeEvent,
        'status_event': statusEvent,
        'description': description,
        'target_participants': targetParticipants,
        'participant_description': participantDescription,
        'photo_file[]': photoFile,
        'event_category_id[]': eventCategoryId,
        'target_fund': targetFund,
        'sponsor_deadline': sponsorDeadline,
        'event_start_date': eventStartDate,
        'event_end_date': eventEndDate,
        'event_venue': eventVenue,
        'province': province,
        'city': city,
        'address': address,
        'participant_category[]': participantCategory,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateKontraprestasiCall {
  Future<ApiCallResponse> call({
    int? kontraprestasiId,
    String? title = '',
    int? minSponsor,
    int? maxSponsor,
    String? feedback = '',
    int? iconPhotoKontraprestasiId,
    String? authToken = '',
  }) async {
    final baseUrl = EventManagemenOrganizerGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update Kontraprestasi',
      apiUrl:
          '$baseUrl/events/post-update-kontraprestasi/$kontraprestasiId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'title': title,
        'min_sponsor': minSponsor,
        'max_sponsor': maxSponsor,
        'feedback': feedback,
        'icon_photo_kontraprestasi_id': iconPhotoKontraprestasiId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Event Managemen Organizer Group Code

/// Start Management Kontraprestasi Group Code

class ManagementKontraprestasiGroup {
  static String getBaseUrl({
    String? authToken = '',
  }) =>
      'https://devfundation.propertio.id/api/v1';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [auth_token]',
  };
  static GetListIconKontraprestasiCall getListIconKontraprestasiCall =
      GetListIconKontraprestasiCall();
}

class GetListIconKontraprestasiCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = ManagementKontraprestasiGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get list icon kontraprestasi',
      apiUrl: '$baseUrl/icon-kontraprestasi/list-icon-kontraprestasi',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? responseListIconKontraprestasi(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? idIconKotraprestasi(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? iconKontraprestasi(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].photo_file''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End Management Kontraprestasi Group Code

/// Start Public Group Code

class PublicGroup {
  static String getBaseUrl() => 'https://devfundation.propertio.id/api/v1';
  static Map<String, String> headers = {};
  static GetEventByCategoryCall getEventByCategoryCall =
      GetEventByCategoryCall();
  static GetEventCategoryNameListsCall getEventCategoryNameListsCall =
      GetEventCategoryNameListsCall();
  static GetListKontraprestasiCall getListKontraprestasiCall =
      GetListKontraprestasiCall();
  static GetDetailKontraprestasiCall getDetailKontraprestasiCall =
      GetDetailKontraprestasiCall();
}

class GetEventByCategoryCall {
  Future<ApiCallResponse> call({
    int? categoryId,
  }) async {
    final baseUrl = PublicGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Event By Category',
      apiUrl: '$baseUrl/events/event-category/$categoryId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? eventDatas(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class GetEventCategoryNameListsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = PublicGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Event Category Name Lists',
      apiUrl: '$baseUrl/events/event-categories',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? dataCategories(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? categoriesId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? categoriesName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetListKontraprestasiCall {
  Future<ApiCallResponse> call({
    int? eventId,
  }) async {
    final baseUrl = PublicGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get List Kontraprestasi',
      apiUrl: '$baseUrl/events/event-detail/$eventId/list-kontraprestasi',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? dataListKontraprestasi(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class GetDetailKontraprestasiCall {
  Future<ApiCallResponse> call({
    int? eventId,
    int? kontraprestasiId,
  }) async {
    final baseUrl = PublicGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Detail Kontraprestasi',
      apiUrl:
          '$baseUrl/events/event-detail/$eventId/list-kontraprestasi/$kontraprestasiId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Public Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
