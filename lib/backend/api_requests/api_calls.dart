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
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post Mitra',
      apiUrl: '$baseUrl/auth/mitra-enrollment/6',
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
      alwaysAllowBody: false,
    );
  }
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
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
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
