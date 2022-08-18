abstract class DataSourceException implements Exception {
  final String message;

  DataSourceException(this.message);
}

class RequestError extends DataSourceException {
  final int statusCode;

  RequestError(super.message, {required this.statusCode});
}

class ApiError extends DataSourceException {
  ApiError(super.message);
}
