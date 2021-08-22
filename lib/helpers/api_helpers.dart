// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';

// import 'package:http/http.dart' as http;
// // import 'package:pay_by_verifi/config/api.dart';
// import 'package:retry/retry.dart';
// import 'package:pay_by_verifi/models/authentication.dart';
// import 'package:pay_by_verifi/services/report_error.dart';

// import 'app_exceptions.dart';
// import 'package:bento_api/api.dart' as ba;

// class ApiBaseHelper {
//   static Future<dynamic> get(String url) async {
//     var resp;

//     try {
//       String token = await Authentication.getToken();
//       // log('token:: $token');
//       final response = await retry(
//         () {
//           return http.get(
//             url,
//             headers: {
//               HttpHeaders.contentTypeHeader: 'application/json',
//               HttpHeaders.authorizationHeader: "Bearer $token"
//             },
//           ).timeout(Duration(seconds: 40));
//         },
//         // Retry on SocketException or FetchNetworkException
//         retryIf: (e) =>
//             e is SocketException ||
//             e is TimeoutException ||
//             e is FetchNetworkException,
//         maxAttempts: 2,
//       );
//       resp = _returnResponse(response);
//     } on SocketException {
//       throw FetchNetworkException('No Internet connection');
//     } catch (e, stackTrace) {
//       if (!(e is FetchNetworkException)) {
//         ReportError.reportError(e, stackTrace);
//       }
//       print(e);
//       print(stackTrace);
//     }

//     return resp;
//   }

//   static Future<dynamic> post(String url, dynamic body) async {
//     var resp;
//     String token = await Authentication.getToken();

//     try {
//       final response = await retry(
//         () {
//           return http.post(
//             url,
//             body: body,
//             headers: {
//               HttpHeaders.contentTypeHeader: 'application/json',
//               HttpHeaders.authorizationHeader: "Bearer $token"
//             },
//           ).timeout(Duration(seconds: 40));
//         },
//         // Retry on SocketException or FetchNetworkException
//         retryIf: (e) =>
//             e is SocketException ||
//             e is TimeoutException ||
//             e is FetchNetworkException,
//         maxAttempts: 2,
//       );
//       resp = _returnResponse(response);
//     } on SocketException {
//       throw FetchNetworkException('No Internet connection');
//     } catch (e, stackTrace) {
//       if (!(e is FetchNetworkException)) {
//         ReportError.reportError(e, stackTrace);
//       }
//       print(e);
//     }

//     return resp;
//   }

//   static Future<dynamic> put(String url, dynamic body) async {
//     var resp;
//     String token = await Authentication.getToken();

//     try {
//       final response = await retry(
//         () {
//           return http.put(
//             url,
//             body: body,
//             headers: {
//               HttpHeaders.contentTypeHeader: 'application/json',
//               HttpHeaders.authorizationHeader: "Bearer $token"
//             },
//           ).timeout(Duration(seconds: 40));
//         },
//         // Retry on SocketException or FetchNetworkException
//         retryIf: (e) =>
//             e is SocketException ||
//             e is TimeoutException ||
//             e is FetchNetworkException,
//         maxAttempts: 2,
//       );
//       resp = _returnResponse(response);
//     } on SocketException {
//       throw FetchNetworkException('No Internet connection');
//     } catch (e, stackTrace) {
//       if (!(e is FetchNetworkException)) {
//         ReportError.reportError(e, stackTrace);
//         rethrow;
//       }
//       // print(e);
//     }

//     return resp;
//   }

//   static Future<dynamic> delete(String url) async {
//     var resp;
//     String token = await Authentication.getToken();

//     try {
//       final response = await retry(
//         () {
//           return http.delete(
//             url,
//             headers: {
//               HttpHeaders.contentTypeHeader: 'application/json',
//               HttpHeaders.authorizationHeader: "Bearer $token"
//             },
//           ).timeout(Duration(seconds: 40));
//         },
//         // Retry on SocketException or FetchNetworkException
//         retryIf: (e) =>
//             e is SocketException ||
//             e is TimeoutException ||
//             e is FetchNetworkException,
//       );
//       resp = _returnResponse(response);
//     } on SocketException {
//       throw FetchNetworkException('No Internet connection');
//     } catch (e, stackTrace) {
//       if (!(e is FetchNetworkException)) {
//         ReportError.reportError(e, stackTrace);
//       }
//       print(e);
//     }

//     return resp;
//   }

//   static dynamic _returnResponse(http.Response response) {
//     switch (response.statusCode) {
//       case 200:
//         return response;
//       case 400:
//         print(json.decode(response.body));
//         throw BadRequestException(response.body);
//       // case 400:
//       //   return response;
//       case 403:
//         throw UnauthorisedException(response.body);
//       case 500:
//         throw InternalServerException(response.body);
//       default:
//         throw FetchNetworkException(
//             'Error occured while communicating with Server - StatusCode : ${response.statusCode}');
//     }
//   }

//   static Future<ba.ApiClient> get apiClient async => ba.ApiClient(
//       basePath: '${API.getBaseUrl}'
//           .replaceRange(API.getBaseUrl.length - 1, API.getBaseUrl.length, ''))
//     ..addDefaultHeader(HttpHeaders.authorizationHeader,
//         'Bearer ${await Authentication.getToken()}')
//     ..getAuthentication<ba.HttpBearerAuth>('httpBearer').accessToken =
//         await Authentication.getToken();
//   static Future<ba.MiscApi> get miscApi async => ba.MiscApi(await apiClient);
// }
