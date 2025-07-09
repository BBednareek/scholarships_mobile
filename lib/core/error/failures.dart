import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:scholarships/core/error/exceptions.dart';

enum FailureType {
  unknown,
  server,
  notFound,
  unprocessable,
  forbidden,
  conflict,
  connectionTimeout,
  noInternet,
  tooManyRequests,
  storage,
}

class Failure extends Equatable {
  final FailureType type;
  final String errorCode;
  final String message;

  const Failure({
    required this.type,
    required this.errorCode,
    required this.message,
  });

  factory Failure.throwable(dynamic e) {
    if (e is FirestorePermissionDeniedException) {
      return const Failure(
        type: FailureType.forbidden,
        errorCode: 'permission-denied',
        message: 'Access denied to Firestore resource',
      );
    } else if (e is FirestoreUnavailableException) {
      return const Failure(
        type: FailureType.server,
        errorCode: 'unavailable',
        message: 'Firestore service is unavailable',
      );
    } else if (e is FirestoreNotFoundException) {
      return const Failure(
        type: FailureType.notFound,
        errorCode: 'not-found',
        message: 'Requested Firestore document was not found',
      );
    } else if (e is FirestoreTimeoutException) {
      return const Failure(
        type: FailureType.connectionTimeout,
        errorCode: 'deadline-exceeded',
        message: 'Firestore operation timed out',
      );
    } else if (e is FirestoreTooManyRequestsException) {
      return const Failure(
        type: FailureType.tooManyRequests,
        errorCode: 'resource-exhausted',
        message: 'Too many requests to Firestore',
      );
    } else if (e is FirestoreUnauthenticatedException) {
      return const Failure(
        type: FailureType.forbidden,
        errorCode: 'unauthenticated',
        message: 'User not authenticated',
      );
    } else if (e is NoInternetConnectionException || e is SocketException) {
      return const Failure(
        type: FailureType.noInternet,
        errorCode: 'no-internet',
        message: 'No internet connection',
      );
    } else if (e is ServerException) {
      return Failure(
        type: FailureType.server,
        errorCode: e.message,
        message: e.message,
      );
    } else if (e is ConflictException) {
      return const Failure(
        type: FailureType.conflict,
        errorCode: 'conflict',
        message: 'Conflict occurred',
      );
    } else if (e is ForbiddenException) {
      return const Failure(
        type: FailureType.forbidden,
        errorCode: 'forbidden',
        message: 'Access forbidden',
      );
    } else if (e is NotFoundException) {
      return const Failure(
        type: FailureType.notFound,
        errorCode: 'not-found',
        message: 'Resource not found',
      );
    } else if (e is UnprocessableException) {
      return const Failure(
        type: FailureType.unprocessable,
        errorCode: 'unprocessable',
        message: 'Unprocessable request',
      );
    }

    return const Failure(
      type: FailureType.unknown,
      errorCode: 'unknown-failure',
      message: 'Unknown error occurred',
    );
  }

  @override
  List<Object> get props => [type, errorCode, message];

  @override
  String toString() => message;
}
