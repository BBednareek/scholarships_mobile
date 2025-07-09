part of 'connection_bloc.dart';

@freezed
abstract class ConnectionState with _$ConnectionState {
  const factory ConnectionState.status({required bool connection}) = _Status;
}
