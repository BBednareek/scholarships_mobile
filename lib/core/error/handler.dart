import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:scholarships/core/error/exceptions.dart';

mixin ErrorHandling {
  Exception defaultException(dynamic error, StackTrace? stackTrace) {
    if (error is FirebaseException && error.plugin == 'cloud_firestore') {
      switch (error.code) {
        case 'permission-denied':
          return FirestorePermissionDeniedException();
        case 'unavailable':
          return FirestoreUnavailableException();
        case 'not-found':
          return FirestoreNotFoundException();
        case 'deadline-exceeded':
          return FirestoreTimeoutException();
        case 'resource-exhausted':
          return FirestoreTooManyRequestsException();
        case 'unauthenticated':
          return FirestoreUnauthenticatedException();
        default:
          return FirestoreException(code: error.code, message: error.message ?? 'Firestore error');
      }
    }

    if (error is TimeoutException) {
      return FirestoreTimeoutException();
    }

    if (error is SocketException) {
      return NoInternetConnectionException();
    }

    log('''

    🔥 EXCEPTION CAUGHT 🔥

    Error: $error
    StackTrace: ${stackTrace ?? 'no stack'}

    ''');

    return error is Exception ? error : Exception(error.toString());
  }
}
