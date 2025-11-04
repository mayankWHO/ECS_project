import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PredictCall {
  static Future<ApiCallResponse> call({
    int? morningMinutes,
    int? afternoonMinutes,
    int? eveningMinutes,
    String? session = '',
  }) async {
    final ffApiRequestBody = '''
{
  "time_period": "${escapeStringForJson(session)}",
  "morning_time": ${morningMinutes},
  "afternoon_time": ${afternoonMinutes},
  "evening_time": ${eveningMinutes},
  "takenMorning": 1,
  "takenAfternoon": 1,
  "takenEvening": 0,
  "day_of_week": 3
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'predict',
      apiUrl:
          'https://ecs-ai-backend.livelycoast-b6426dc8.centralindia.azurecontainerapps.io/predict',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? formattedTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.predicted_time_formatted''',
      ));
  static double? timeInMins(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.predicted_time_minutes''',
      ));
  static String? session(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.time_period''',
      ));
  static bool? prediction(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.will_take_medicine''',
      ));
}

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
  if (item is DocumentReference) {
    return item.path;
  }
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
