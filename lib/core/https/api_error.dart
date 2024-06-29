import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiExceptionHandler {
  static String handleException(Object error) {
    if (error is http.ClientException) {
      return "Connection error: Please check your internet connection and try again.";
    } else if (error is SocketException) {
      return "Network error: Unable to establish a connection with the server.";
    } else if (error is TimeoutException) {
      return "Timeout error: The connection to the server timed out.";
    } else if (error is http.MultipartRequest) {
      return "Multipart request error: Failed to send multipart request.";
    } else if (error is http.Response) {
      switch (error.statusCode) {
        case 400:
          return "Bad request: The server could not understand the request.";
        case 401:
          return "Unauthorized: Please log in to access this resource.";
        case 403:
          return "Forbidden: You don't have permission to access this resource.";
        case 404:
          return "Not found: The requested resource was not found.";
        case 408:
          return "Request timeout: The request took too long to process.";
        case 500:
          return "Internal server error: Something went wrong on the server.";
        case 503:
          return "Service unavailable: The server is currently unavailable.";
        default:
          return "HTTP error ${error.statusCode}: ${error.reasonPhrase}";
      }
    } else {
      return "An unknown error occurred: $error";
    }
  }

  static String handleResponse(http.Response? error) {
    switch (error!.statusCode) {
      case 400:
        return "Bad request: The server could not understand the request.";
      case 401:
        return "Unauthorized: Please log in to access this resource.";
      case 403:
        return "Forbidden: You don't have permission to access this resource.";
      case 404:
        return "Not found: The requested resource was not found.";
      case 408:
        return "Request timeout: The request took too long to process.";
      case 500:
        return "Internal server error: Something went wrong on the server.";
      case 503:
        return "Service unavailable: The server is currently unavailable.";
      default:
        return "HTTP error ${error.statusCode}: ${error.reasonPhrase}";
    }
  }
}
