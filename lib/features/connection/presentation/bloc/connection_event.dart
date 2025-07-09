part of 'connection_bloc.dart';

@freezed
abstract class ConnectionEvent with _$ConnectionEvent {
  const factory ConnectionEvent.noInternet({required bool status}) =
      _noInternet;
}
