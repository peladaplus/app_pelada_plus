abstract class DataSourceException implements Exception {}

class RequestError extends DataSourceException {
  final int statusCode;
  final String message;

  RequestError({required this.statusCode, required this.message});
}

class ApiError extends DataSourceException {
  final String message;

  ApiError({required this.message});
}
