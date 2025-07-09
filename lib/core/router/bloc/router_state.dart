part of 'router_bloc.dart';

@freezed
abstract class RouterState with _$RouterState {
  const factory RouterState({@Default(false) bool changed}) = _RouterState;
}
