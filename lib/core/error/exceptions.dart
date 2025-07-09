/// Firestore base exception
class FirestoreException implements Exception {
  final String code;
  final String message;

  FirestoreException({required this.code, required this.message});

  @override
  String toString() => '$code: $message';
}

/// Permission denied (security rules)
class FirestorePermissionDeniedException extends FirestoreException {
  FirestorePermissionDeniedException()
      : super(code: 'permission-denied', message: 'Permission denied');
}

/// Firestore is unavailable (e.g. no network or server down)
class FirestoreUnavailableException extends FirestoreException {
  FirestoreUnavailableException()
      : super(code: 'unavailable', message: 'Firestore service is unavailable');
}

/// Document not found
class FirestoreNotFoundException extends FirestoreException {
  FirestoreNotFoundException()
      : super(code: 'not-found', message: 'Document not found');
}

/// Operation timed out
class FirestoreTimeoutException extends FirestoreException {
  FirestoreTimeoutException()
      : super(code: 'deadline-exceeded', message: 'Firestore operation timed out');
}

/// Too many requests / rate limit exceeded
class FirestoreTooManyRequestsException extends FirestoreException {
  FirestoreTooManyRequestsException()
      : super(code: 'resource-exhausted', message: 'Too many requests to Firestore');
}

/// User not authenticated
class FirestoreUnauthenticatedException extends FirestoreException {
  FirestoreUnauthenticatedException()
      : super(code: 'unauthenticated', message: 'User is not authenticated');
}

/// Generic no internet
class NoInternetConnectionException implements Exception {
  @override
  String toString() => 'No internet connection';
}

/// General-purpose server exception
class ServerException implements Exception {
  final String message;

  const ServerException({required this.message});

  factory ServerException.withErrorCode(Map<String, dynamic> data) =>
      const ServerException(message: 'Server not responding');

  @override
  String toString() => message;
}

/// 422 - Unprocessable Entity
class UnprocessableException implements Exception {
  final String message;

  UnprocessableException({required this.message});

  factory UnprocessableException.withErrorCode(Map<String, dynamic> data) =>
      UnprocessableException(message: 'Unprocessable error');

  @override
  String toString() => message;
}

/// 403 - Forbidden
class ForbiddenException implements Exception {
  final String message;

  ForbiddenException({required this.message});

  factory ForbiddenException.withErrorCode(Map<String, dynamic> data) =>
      ForbiddenException(message: 'Forbidden error');

  @override
  String toString() => message;
}

/// 409 - Conflict
class ConflictException implements Exception {
  final String message;

  ConflictException({required this.message});

  factory ConflictException.withErrorCode(Map<String, dynamic> data) =>
      ConflictException(message: 'Conflict error');

  @override
  String toString() => message;
}

/// 404 - Not Found
class NotFoundException implements Exception {
  final String message;

  NotFoundException({required this.message});

  factory NotFoundException.withErrorCode(dynamic data) =>
      NotFoundException(message: 'Not found error');

  @override
  String toString() => message;
}

/// 500 - Internal Server Error
class InternalServerException implements Exception {
  final String message;

  InternalServerException({required this.message});

  @override
  String toString() => message;
}

/// Generic auth failure
class AuthException implements Exception {}

/// Storage related failure
class StorageException implements Exception {}

/// Rate limit exceeded
class TooManyRequestsException implements Exception {}
