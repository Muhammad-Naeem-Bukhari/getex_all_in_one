// write a app exception class
class AppException implements Exception {
  final String? message;
  final String? prefix;

  AppException([this.message, this.prefix]);

  @override
  String toString() {
    return "$prefix$message";
  }
}

// internet connection exception class
class InternetConnectionException extends AppException {
  InternetConnectionException([String? message])
      : super(message, "No Internet: ");
}

// request timeout exceion
class RequestTimeoutException extends AppException {
  RequestTimeoutException([String? message])
      : super(message, "Timeout: Request took too long: ");
}

// server exception
class ServerException extends AppException {
  ServerException([String? message])
      : super(message, "Server Error: Internal Server Error: ");
}

// bad request exception
class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, "Bad Request: ");
}

// unauthorised exception
class UnauthorisedException extends AppException {
  UnauthorisedException([String? message]) : super(message, "Unauthorised: ");
}
