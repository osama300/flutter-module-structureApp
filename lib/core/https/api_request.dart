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
      apiUrl: 'https://tyma.cloud/tenants/yaqoot-store/api/v1$endpoint',
      callType: callType,
      headers: {
        'adminLogin': 'true',
        'platform': 'ios',
        // 'Authorization': 'Bearer ${main.sharedPref.getString('user_token')}',
        'api_key':
            'Vm0weE1GVXhSWGhXV0d4VVYwZFNUMVV3Wkc5V01WbDNXa1pPVlUxV2NIbFdNakZIWVZVeFYyTkljRmRXZWxaUVZqQmtTMUl5VGtkYVJtUk9ZV3hhZVZkV1dtRlpWMDE1Vkd0a2FGSnRVbkJWYWtwdVpXeGFjbFZyU214U2EzQjZWMnRvVjJGc1NuTmpSemxWVm14d00xUlhlR0ZUUlRGSllVWk9UbFpZUWtoV1IzaGhXVlpSZUZkWWJHaFNlbXhXVm14YWQyVldjRlpYYlVacVlraENSbFZYZUZkaFZscHlWMVJHVjJKR2NIWlpWRVpUWXpGa2RWUnNVbWhsYlhoWVZrWldhMVZyTVVkWGJGcFlZbTFTV0ZSV1duZGxWbVJ5VmxSV1ZrMXJjRWRaTUZwdlZqSktTRlJZYUZoV2JWSkhXa1JCZUZac1duTmFSbVJUVjBWS2IxWXhXbXRsYXpGWVZHNU9XR0V4V2xSWmExcDNZMnhTVjFaVVJteGlSMUo1VmpJeE1HRkdTbFZTYkdoYVRVWndSRlpxUm1GV01rNUdUMVpXVjJKSVFsVlhhMVpoVXpKU1YxUnVUbFZpVjJod1ZXMDFRMWRHV1hoWGJFNVNZbFphUjFSVmFHOWhiRXBYVjJ4T1YwMUhVblpaTVZwWFl6RldjbHBHVW1sU00yZzFWbTE0VTFZeVJrZFRiazVxVW0xU1dGUldXa3RTUmxweFVtdDBhazFYVW5wV1Z6RkhWVEpXY2xkc1VsaGhNVXBEVkZaYVlWWXhjRWxWYld4VFZrWmFVRmRYZEZka01WWnpWMjVTYkZKck5WTlVWbFY0VGtaWmVHRkhPVmhTTUhCNVdUQmFiMWRzWkVsUmJHaFhWak5vYUZacVJsZFhWbkJIVVd4YVYxSkZSVEU9',
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


// class ApiRequest {
//   static Future<ApiCallResponse> call(
//       uploadedLocalFile
//       ) async {
//     return ApiManager.instance.makeApiCall(
//       callName: 'login',
//       apiUrl: 'https://arabicbee.com/Chat/chatapis/cv.php',
//       callType: ApiCallType.POST,
// headers: {
//   'platform': 'ios',
//   'tenant_token': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxMiIsImp0aSI6ImIzMzYzM2NlMzIzZWE5YTQyNTBiMDZjZjM4ODU2MDcwZGI0MDE3M2IxYjk0YjUxNDg2ODRiY2YzN2RlYjQ2OThkZWViNDk2ZTMwNDk5ZGQ1IiwiaWF0IjoxNzE0NjA3NzMyLjk5NDQxMjg5OTAxNzMzMzk4NDM3NSwibmJmIjoxNzE0NjA3NzMyLjk5NDQxNTA0NDc4NDU0NTg5ODQzNzUsImV4cCI6MTc0NjE0MzczMi45ODc4NDMwMzY2NTE2MTEzMjgxMjUsInN1YiI6IjEiLCJzY29wZXMiOltdfQ.1u-fjp4jCaqEiirJIWWfRJxgGtHp7CpYGGBWRWcxaz2Jr5BwyfbjCfBxjxPMtXTsQPkmdJD7OSHRD5DC6F_M9wHdVF2l3l7Wa_ekXC7Ch9VmRj5yBUvlgl4pjQ_NPJalnyizyfoaFtpLOuiX7liQjxKxWB1EYZIGlvuwgzuV53incHCQMwDzRa7on45V2o7IUEsR1Ar6oIs-cq7Wgg617EnpGuh0sP894d1zyJJA3AN0q6zEd2KGa90fROIF9-voUtUOdliqJHVFWAPx6AYr1rww_PDNXsg_VdgBtE32jbXMaFfyBKw5RzcF4vZmOE4G4mxT1TMQKD9YrLP3m1OsirJxC7K-IsjxPPBswq692ZhXHXN3i869MkJyLU3fA1AMYtIoD_QFWxDKOLjFnH-eLO5FU72C-Kz-uRMBugFbaGmqnVBaNSIyDc2tQWiW05YmVYa8eQkgVHC6VZCtQ6tecGHnef1l7egim6SgGBBQJZDl8a83fy-miqKgmBvx3qhnYWxzKEtNU5Dwc6yxMTM0IkKBNuywutHHRsEvBPX1hDVwtQ-JELZjnOzOtHOafxnzmkOkkEpbYNlixzzwh1qaoj599Qbop3APTEcQiXvg5K11xDTy244t1F4Ds8kH5qs51meqkSBUqjs4VFjcn6D6Z9aXXRtiEGftLZYJEqGxmOM',
//
//   'api_key': 'Vm0weE1GVXhSWGhXV0d4VVYwZFNUMVV3Wkc5V01WbDNXa1pPVlUxV2NIbFdNakZIWVZVeFYyTkljRmRXZWxaUVZqQmtTMUl5VGtkYVJtUk9ZV3hhZVZkV1dtRlpWMDE1Vkd0a2FGSnRVbkJWYWtwdVpXeGFjbFZyU214U2EzQjZWMnRvVjJGc1NuTmpSemxWVm14d00xUlhlR0ZUUlRGSllVWk9UbFpZUWtoV1IzaGhXVlpSZUZkWWJHaFNlbXhXVm14YWQyVldjRlpYYlVacVlraENSbFZYZUZkaFZscHlWMVJHVjJKR2NIWlpWRVpUWXpGa2RWUnNVbWhsYlhoWVZrWldhMVZyTVVkWGJGcFlZbTFTV0ZSV1duZGxWbVJ5VmxSV1ZrMXJjRWRaTUZwdlZqSktTRlJZYUZoV2JWSkhXa1JCZUZac1duTmFSbVJUVjBWS2IxWXhXbXRsYXpGWVZHNU9XR0V4V2xSWmExcDNZMnhTVjFaVVJteGlSMUo1VmpJeE1HRkdTbFZTYkdoYVRVWndSRlpxUm1GV01rNUdUMVpXVjJKSVFsVlhhMVpoVXpKU1YxUnVUbFZpVjJod1ZXMDFRMWRHV1hoWGJFNVNZbFphUjFSVmFHOWhiRXBYVjJ4T1YwMUhVblpaTVZwWFl6RldjbHBHVW1sU00yZzFWbTE0VTFZeVJrZFRiazVxVW0xU1dGUldXa3RTUmxweFVtdDBhazFYVW5wV1Z6RkhWVEpXY2xkc1VsaGhNVXBEVkZaYVlWWXhjRWxWYld4VFZrWmFVRmRYZEZka01WWnpWMjVTYkZKck5WTlVWbFY0VGtaWmVHRkhPVmhTTUhCNVdUQmFiMWRzWkVsUmJHaFhWak5vYUZacVJsZFhWbkJIVVd4YVYxSkZSVEU9',
//   'token': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiOTEzYjNmMmI3NzY5ZDZkNTgzYjE5ZjdjMjE4NGFkOGRkYzJlYzViOTUxYzFiYjk4ZDNlMjg0MmQzOWJhZDEwNTk4MGMzOTM4ZjYwMGYwMGIiLCJpYXQiOjE3MTQ1Njk3NzQuMzg0MTMyLCJuYmYiOjE3MTQ1Njk3NzQuMzg0MzM4LCJleHAiOjE3NDYxMDU3NzQuMzcwMjQxLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.g1KlGD4pGBoSNOntxxwDc_5Ls4UNlRypXU0EdcfQ1dhrOK4tTlIx0JJVULmzzYkWTSN3LljNtfHi2SpagFEqPO4LCL5LY8DM4UaKRb-HeZdFjm9pqQQEn15BTySdcBFOIRmVz5Z31VqwbWYFjtQ5DA_IO9lkUmoPPKAgmGCL14D9sQmj8_Q7ej1FjNyzI6yQF8wOPPSA4J01BfJJeDdjEMostWyYfgM2FFC-u0awO8pHAhfsr7eWPmAo7W44pzFOV54hR0XIcuCzim3KYh5yzvJXYFa_hYpFmDL5D_tadnpfGLqskKUyOGXvoTDlN197BVcuZpwFKeCgqKpPs15_EPu4LLFsA-QCvhrr1hwiEuZXmj6lG74dWUWSwAIvS3goASpb4MxUFsoZXTEY4g-JW28Vg3PUd8XIxAntS5vfjtB56Nw27IFMu9EZSWzyoU6Avw2-eebpsNPq9OW9SFnNZnOgG9B_VaQmHw-IkIsZ_ouPkbQ7VJCBNqjd_jVKfUri7rvTw-BxG8sqv_ImFXmketq4rCfr1WGW6HqaTDMhBCXYuTdYUxL7wSDF1VSO2o5QzeBl7oBtXGCnt-k-mp45BSYEUMuR-gU6KET1R4h2qQJ0haIebgGhWxFKafbYaT5a4zhpKneb5nKMfAI7OLrc5f0Dh3Nqp9_r_IDk9FxYTIw',
// },
//       params: {
//         'login_id': "admin@omalh.com",
//         'password': "1234577678",
//         // 'file': uploadedLocalFile,
//       },
//       bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
//       returnBody: true,
//       encodeBodyUtf8: false,
//       decodeUtf8: false,
//       cache: false,
//       alwaysAllowBody: false,
//     );
//   }
//
//   static Future<ApiCallResponse> login() async {
//     return ApiManager.instance.makeApiCall(
//       callName: 'login',
//       apiUrl: 'https://tyma.cloud/tenants/modern-tech/api/v1/auth/login',
//       callType: ApiCallType.POST,
//       headers: {
//       'platform': 'ios',
//       'Access-Control-Allow-Origin': ' *',
//         'tenant_token': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxMiIsImp0aSI6ImIzMzYzM2NlMzIzZWE5YTQyNTBiMDZjZjM4ODU2MDcwZGI0MDE3M2IxYjk0YjUxNDg2ODRiY2YzN2RlYjQ2OThkZWViNDk2ZTMwNDk5ZGQ1IiwiaWF0IjoxNzE0NjA3NzMyLjk5NDQxMjg5OTAxNzMzMzk4NDM3NSwibmJmIjoxNzE0NjA3NzMyLjk5NDQxNTA0NDc4NDU0NTg5ODQzNzUsImV4cCI6MTc0NjE0MzczMi45ODc4NDMwMzY2NTE2MTEzMjgxMjUsInN1YiI6IjEiLCJzY29wZXMiOltdfQ.1u-fjp4jCaqEiirJIWWfRJxgGtHp7CpYGGBWRWcxaz2Jr5BwyfbjCfBxjxPMtXTsQPkmdJD7OSHRD5DC6F_M9wHdVF2l3l7Wa_ekXC7Ch9VmRj5yBUvlgl4pjQ_NPJalnyizyfoaFtpLOuiX7liQjxKxWB1EYZIGlvuwgzuV53incHCQMwDzRa7on45V2o7IUEsR1Ar6oIs-cq7Wgg617EnpGuh0sP894d1zyJJA3AN0q6zEd2KGa90fROIF9-voUtUOdliqJHVFWAPx6AYr1rww_PDNXsg_VdgBtE32jbXMaFfyBKw5RzcF4vZmOE4G4mxT1TMQKD9YrLP3m1OsirJxC7K-IsjxPPBswq692ZhXHXN3i869MkJyLU3fA1AMYtIoD_QFWxDKOLjFnH-eLO5FU72C-Kz-uRMBugFbaGmqnVBaNSIyDc2tQWiW05YmVYa8eQkgVHC6VZCtQ6tecGHnef1l7egim6SgGBBQJZDl8a83fy-miqKgmBvx3qhnYWxzKEtNU5Dwc6yxMTM0IkKBNuywutHHRsEvBPX1hDVwtQ-JELZjnOzOtHOafxnzmkOkkEpbYNlixzzwh1qaoj599Qbop3APTEcQiXvg5K11xDTy244t1F4Ds8kH5qs51meqkSBUqjs4VFjcn6D6Z9aXXRtiEGftLZYJEqGxmOM',
//
//         'api_key': 'Vm0weE1GVXhSWGhXV0d4VVYwZFNUMVV3Wkc5V01WbDNXa1pPVlUxV2NIbFdNakZIWVZVeFYyTkljRmRXZWxaUVZqQmtTMUl5VGtkYVJtUk9ZV3hhZVZkV1dtRlpWMDE1Vkd0a2FGSnRVbkJWYWtwdVpXeGFjbFZyU214U2EzQjZWMnRvVjJGc1NuTmpSemxWVm14d00xUlhlR0ZUUlRGSllVWk9UbFpZUWtoV1IzaGhXVlpSZUZkWWJHaFNlbXhXVm14YWQyVldjRlpYYlVacVlraENSbFZYZUZkaFZscHlWMVJHVjJKR2NIWlpWRVpUWXpGa2RWUnNVbWhsYlhoWVZrWldhMVZyTVVkWGJGcFlZbTFTV0ZSV1duZGxWbVJ5VmxSV1ZrMXJjRWRaTUZwdlZqSktTRlJZYUZoV2JWSkhXa1JCZUZac1duTmFSbVJUVjBWS2IxWXhXbXRsYXpGWVZHNU9XR0V4V2xSWmExcDNZMnhTVjFaVVJteGlSMUo1VmpJeE1HRkdTbFZTYkdoYVRVWndSRlpxUm1GV01rNUdUMVpXVjJKSVFsVlhhMVpoVXpKU1YxUnVUbFZpVjJod1ZXMDFRMWRHV1hoWGJFNVNZbFphUjFSVmFHOWhiRXBYVjJ4T1YwMUhVblpaTVZwWFl6RldjbHBHVW1sU00yZzFWbTE0VTFZeVJrZFRiazVxVW0xU1dGUldXa3RTUmxweFVtdDBhazFYVW5wV1Z6RkhWVEpXY2xkc1VsaGhNVXBEVkZaYVlWWXhjRWxWYld4VFZrWmFVRmRYZEZka01WWnpWMjVTYkZKck5WTlVWbFY0VGtaWmVHRkhPVmhTTUhCNVdUQmFiMWRzWkVsUmJHaFhWak5vYUZacVJsZFhWbkJIVVd4YVYxSkZSVEU9',
//         'token': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiOTEzYjNmMmI3NzY5ZDZkNTgzYjE5ZjdjMjE4NGFkOGRkYzJlYzViOTUxYzFiYjk4ZDNlMjg0MmQzOWJhZDEwNTk4MGMzOTM4ZjYwMGYwMGIiLCJpYXQiOjE3MTQ1Njk3NzQuMzg0MTMyLCJuYmYiOjE3MTQ1Njk3NzQuMzg0MzM4LCJleHAiOjE3NDYxMDU3NzQuMzcwMjQxLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.g1KlGD4pGBoSNOntxxwDc_5Ls4UNlRypXU0EdcfQ1dhrOK4tTlIx0JJVULmzzYkWTSN3LljNtfHi2SpagFEqPO4LCL5LY8DM4UaKRb-HeZdFjm9pqQQEn15BTySdcBFOIRmVz5Z31VqwbWYFjtQ5DA_IO9lkUmoPPKAgmGCL14D9sQmj8_Q7ej1FjNyzI6yQF8wOPPSA4J01BfJJeDdjEMostWyYfgM2FFC-u0awO8pHAhfsr7eWPmAo7W44pzFOV54hR0XIcuCzim3KYh5yzvJXYFa_hYpFmDL5D_tadnpfGLqskKUyOGXvoTDlN197BVcuZpwFKeCgqKpPs15_EPu4LLFsA-QCvhrr1hwiEuZXmj6lG74dWUWSwAIvS3goASpb4MxUFsoZXTEY4g-JW28Vg3PUd8XIxAntS5vfjtB56Nw27IFMu9EZSWzyoU6Avw2-eebpsNPq9OW9SFnNZnOgG9B_VaQmHw-IkIsZ_ouPkbQ7VJCBNqjd_jVKfUri7rvTw-BxG8sqv_ImFXmketq4rCfr1WGW6HqaTDMhBCXYuTdYUxL7wSDF1VSO2o5QzeBl7oBtXGCnt-k-mp45BSYEUMuR-gU6KET1R4h2qQJ0haIebgGhWxFKafbYaT5a4zhpKneb5nKMfAI7OLrc5f0Dh3Nqp9_r_IDk9FxYTIw',
//       },
//       params: {
//         'login_id': "admin@omalh.com",
//         'password': "ahmed123",
//       },
//       bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
//       returnBody: true,
//       encodeBodyUtf8: false,
//       decodeUtf8: false,
//       cache: false,
//       alwaysAllowBody: false,
//     );
//   }
//   static Future<ApiCallResponse> postWithFile(FFUploadedFile uploadedLocalFile) async {
//     return ApiCall.call(
//       callName: 'login',
//       apiUrl: 'https://arabicbee.com/Chat/chatapis/cv.php',
//       callType: ApiCallType.POST,
//       headers: {
//         'platform': 'ios',
//         'Access-Control-Allow-Origin': ' *',
//         'tenant_token': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxMiIsImp0aSI6ImIzMzYzM2NlMzIzZWE5YTQyNTBiMDZjZjM4ODU2MDcwZGI0MDE3M2IxYjk0YjUxNDg2ODRiY2YzN2RlYjQ2OThkZWViNDk2ZTMwNDk5ZGQ1IiwiaWF0IjoxNzE0NjA3NzMyLjk5NDQxMjg5OTAxNzMzMzk4NDM3NSwibmJmIjoxNzE0NjA3NzMyLjk5NDQxNTA0NDc4NDU0NTg5ODQzNzUsImV4cCI6MTc0NjE0MzczMi45ODc4NDMwMzY2NTE2MTEzMjgxMjUsInN1YiI6IjEiLCJzY29wZXMiOltdfQ.1u-fjp4jCaqEiirJIWWfRJxgGtHp7CpYGGBWRWcxaz2Jr5BwyfbjCfBxjxPMtXTsQPkmdJD7OSHRD5DC6F_M9wHdVF2l3l7Wa_ekXC7Ch9VmRj5yBUvlgl4pjQ_NPJalnyizyfoaFtpLOuiX7liQjxKxWB1EYZIGlvuwgzuV53incHCQMwDzRa7on45V2o7IUEsR1Ar6oIs-cq7Wgg617EnpGuh0sP894d1zyJJA3AN0q6zEd2KGa90fROIF9-voUtUOdliqJHVFWAPx6AYr1rww_PDNXsg_VdgBtE32jbXMaFfyBKw5RzcF4vZmOE4G4mxT1TMQKD9YrLP3m1OsirJxC7K-IsjxPPBswq692ZhXHXN3i869MkJyLU3fA1AMYtIoD_QFWxDKOLjFnH-eLO5FU72C-Kz-uRMBugFbaGmqnVBaNSIyDc2tQWiW05YmVYa8eQkgVHC6VZCtQ6tecGHnef1l7egim6SgGBBQJZDl8a83fy-miqKgmBvx3qhnYWxzKEtNU5Dwc6yxMTM0IkKBNuywutHHRsEvBPX1hDVwtQ-JELZjnOzOtHOafxnzmkOkkEpbYNlixzzwh1qaoj599Qbop3APTEcQiXvg5K11xDTy244t1F4Ds8kH5qs51meqkSBUqjs4VFjcn6D6Z9aXXRtiEGftLZYJEqGxmOM',
//
//         'api_key': 'Vm0weE1GVXhSWGhXV0d4VVYwZFNUMVV3Wkc5V01WbDNXa1pPVlUxV2NIbFdNakZIWVZVeFYyTkljRmRXZWxaUVZqQmtTMUl5VGtkYVJtUk9ZV3hhZVZkV1dtRlpWMDE1Vkd0a2FGSnRVbkJWYWtwdVpXeGFjbFZyU214U2EzQjZWMnRvVjJGc1NuTmpSemxWVm14d00xUlhlR0ZUUlRGSllVWk9UbFpZUWtoV1IzaGhXVlpSZUZkWWJHaFNlbXhXVm14YWQyVldjRlpYYlVacVlraENSbFZYZUZkaFZscHlWMVJHVjJKR2NIWlpWRVpUWXpGa2RWUnNVbWhsYlhoWVZrWldhMVZyTVVkWGJGcFlZbTFTV0ZSV1duZGxWbVJ5VmxSV1ZrMXJjRWRaTUZwdlZqSktTRlJZYUZoV2JWSkhXa1JCZUZac1duTmFSbVJUVjBWS2IxWXhXbXRsYXpGWVZHNU9XR0V4V2xSWmExcDNZMnhTVjFaVVJteGlSMUo1VmpJeE1HRkdTbFZTYkdoYVRVWndSRlpxUm1GV01rNUdUMVpXVjJKSVFsVlhhMVpoVXpKU1YxUnVUbFZpVjJod1ZXMDFRMWRHV1hoWGJFNVNZbFphUjFSVmFHOWhiRXBYVjJ4T1YwMUhVblpaTVZwWFl6RldjbHBHVW1sU00yZzFWbTE0VTFZeVJrZFRiazVxVW0xU1dGUldXa3RTUmxweFVtdDBhazFYVW5wV1Z6RkhWVEpXY2xkc1VsaGhNVXBEVkZaYVlWWXhjRWxWYld4VFZrWmFVRmRYZEZka01WWnpWMjVTYkZKck5WTlVWbFY0VGtaWmVHRkhPVmhTTUhCNVdUQmFiMWRzWkVsUmJHaFhWak5vYUZacVJsZFhWbkJIVVd4YVYxSkZSVEU9',
//         'token': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiOTEzYjNmMmI3NzY5ZDZkNTgzYjE5ZjdjMjE4NGFkOGRkYzJlYzViOTUxYzFiYjk4ZDNlMjg0MmQzOWJhZDEwNTk4MGMzOTM4ZjYwMGYwMGIiLCJpYXQiOjE3MTQ1Njk3NzQuMzg0MTMyLCJuYmYiOjE3MTQ1Njk3NzQuMzg0MzM4LCJleHAiOjE3NDYxMDU3NzQuMzcwMjQxLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.g1KlGD4pGBoSNOntxxwDc_5Ls4UNlRypXU0EdcfQ1dhrOK4tTlIx0JJVULmzzYkWTSN3LljNtfHi2SpagFEqPO4LCL5LY8DM4UaKRb-HeZdFjm9pqQQEn15BTySdcBFOIRmVz5Z31VqwbWYFjtQ5DA_IO9lkUmoPPKAgmGCL14D9sQmj8_Q7ej1FjNyzI6yQF8wOPPSA4J01BfJJeDdjEMostWyYfgM2FFC-u0awO8pHAhfsr7eWPmAo7W44pzFOV54hR0XIcuCzim3KYh5yzvJXYFa_hYpFmDL5D_tadnpfGLqskKUyOGXvoTDlN197BVcuZpwFKeCgqKpPs15_EPu4LLFsA-QCvhrr1hwiEuZXmj6lG74dWUWSwAIvS3goASpb4MxUFsoZXTEY4g-JW28Vg3PUd8XIxAntS5vfjtB56Nw27IFMu9EZSWzyoU6Avw2-eebpsNPq9OW9SFnNZnOgG9B_VaQmHw-IkIsZ_ouPkbQ7VJCBNqjd_jVKfUri7rvTw-BxG8sqv_ImFXmketq4rCfr1WGW6HqaTDMhBCXYuTdYUxL7wSDF1VSO2o5QzeBl7oBtXGCnt-k-mp45BSYEUMuR-gU6KET1R4h2qQJ0haIebgGhWxFKafbYaT5a4zhpKneb5nKMfAI7OLrc5f0Dh3Nqp9_r_IDk9FxYTIw',
//       },
//       params: {
//         'login_id': "admin@omalh.com",
//         'password': "ahmed123",
//         'file': uploadedLocalFile.bytes,
//         "filename":"test",
//         "contentType": MediaType.parse("image/png"), //
//       },
//       bodyType: BodyType.MULTIPART,
//       returnBody: true,
//       encodeBodyUtf8: false,
//       decodeUtf8: false,
//       cache: false,
//       alwaysAllowBody: false,
//     );
//   }
//   static Future<ApiCallResponse> callGeneral(
//       String name,
//       String endpoint,
//       Map<String, String>? headers,
//       Map<String, dynamic>? params,
//       ) async {
//     return ApiCall.call(
//       callName: name,
//       apiUrl: 'https://tyma.cloud/tenants/modern-tech/api/v1/$endpoint',
//       callType: ApiCallType.POST,
//       headers: headers,
//       params: params,
//       bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
//       returnBody: true,
//       encodeBodyUtf8: false,
//       decodeUtf8: false,
//       cache: false,
//       alwaysAllowBody: false,
//     );
//   }
// }

