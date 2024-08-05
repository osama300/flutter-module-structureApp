import 'api_enum.dart';
import 'api_manager.dart';
import 'api_response.dart';

class ApiRequest {
  Future<ApiCallResponse> call({
    required String callName,
    required String endpoint,
    required ApiCallType callType,
    Map<String, String>? headers,
    Map<String, dynamic>? params,
    BodyType bodyTyp = BodyType.X_WWW_FORM_URL_ENCODED,
    bool returnBody = true,
    bool encodeBodyUtf8 = false,
    bool decodeUtf8 = false,
    bool cache = false,
    bool alwaysAllowBody = false,
  }) async {
    return await ApiManager.instance.makeApiCall(
      callName: callName,
      apiUrl: '/api/v1$endpoint',
      callType: callType,
      headers: {
        'adminLogin': 'true',
        'platform': 'ios',
        'api_key':
            '',
      },
      params: params ?? {},
      bodyType: bodyTyp,
      returnBody: returnBody,
      encodeBodyUtf8: encodeBodyUtf8,
      decodeUtf8: decodeUtf8,
      cache: cache,
      alwaysAllowBody: alwaysAllowBody,
    );
  }
}
