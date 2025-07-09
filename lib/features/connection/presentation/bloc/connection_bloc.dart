import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_bloc.freezed.dart';
part 'connection_event.dart';
part 'connection_state.dart';

class ConnectionBloc extends Bloc<ConnectionEvent, ConnectionState> {
  ConnectionBloc() : super(const ConnectionState.status(connection: true)) {
    on<_noInternet>(_noConnection);
  }

  Future<void> _noConnection(
    _noInternet event,
    Emitter<ConnectionState> emit,
  ) async => emit(state.copyWith(connection: event.status));
}
