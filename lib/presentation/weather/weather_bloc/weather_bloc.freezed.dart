// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeather,
    required TResult Function() switchTemperatureUnit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeather,
    TResult? Function()? switchTemperatureUnit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeather,
    TResult Function()? switchTemperatureUnit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWeather value) getWeather,
    required TResult Function(SwitchTemperatureUnit value)
        switchTemperatureUnit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetWeather value)? getWeather,
    TResult? Function(SwitchTemperatureUnit value)? switchTemperatureUnit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWeather value)? getWeather,
    TResult Function(SwitchTemperatureUnit value)? switchTemperatureUnit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetWeatherImplCopyWith<$Res> {
  factory _$$GetWeatherImplCopyWith(
          _$GetWeatherImpl value, $Res Function(_$GetWeatherImpl) then) =
      __$$GetWeatherImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWeatherImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetWeatherImpl>
    implements _$$GetWeatherImplCopyWith<$Res> {
  __$$GetWeatherImplCopyWithImpl(
      _$GetWeatherImpl _value, $Res Function(_$GetWeatherImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWeatherImpl implements GetWeather {
  _$GetWeatherImpl();

  @override
  String toString() {
    return 'WeatherEvent.getWeather()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWeatherImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeather,
    required TResult Function() switchTemperatureUnit,
  }) {
    return getWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeather,
    TResult? Function()? switchTemperatureUnit,
  }) {
    return getWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeather,
    TResult Function()? switchTemperatureUnit,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWeather value) getWeather,
    required TResult Function(SwitchTemperatureUnit value)
        switchTemperatureUnit,
  }) {
    return getWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetWeather value)? getWeather,
    TResult? Function(SwitchTemperatureUnit value)? switchTemperatureUnit,
  }) {
    return getWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWeather value)? getWeather,
    TResult Function(SwitchTemperatureUnit value)? switchTemperatureUnit,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather(this);
    }
    return orElse();
  }
}

abstract class GetWeather implements WeatherEvent {
  factory GetWeather() = _$GetWeatherImpl;
}

/// @nodoc
abstract class _$$SwitchTemperatureUnitImplCopyWith<$Res> {
  factory _$$SwitchTemperatureUnitImplCopyWith(
          _$SwitchTemperatureUnitImpl value,
          $Res Function(_$SwitchTemperatureUnitImpl) then) =
      __$$SwitchTemperatureUnitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwitchTemperatureUnitImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$SwitchTemperatureUnitImpl>
    implements _$$SwitchTemperatureUnitImplCopyWith<$Res> {
  __$$SwitchTemperatureUnitImplCopyWithImpl(_$SwitchTemperatureUnitImpl _value,
      $Res Function(_$SwitchTemperatureUnitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SwitchTemperatureUnitImpl implements SwitchTemperatureUnit {
  _$SwitchTemperatureUnitImpl();

  @override
  String toString() {
    return 'WeatherEvent.switchTemperatureUnit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchTemperatureUnitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeather,
    required TResult Function() switchTemperatureUnit,
  }) {
    return switchTemperatureUnit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeather,
    TResult? Function()? switchTemperatureUnit,
  }) {
    return switchTemperatureUnit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeather,
    TResult Function()? switchTemperatureUnit,
    required TResult orElse(),
  }) {
    if (switchTemperatureUnit != null) {
      return switchTemperatureUnit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWeather value) getWeather,
    required TResult Function(SwitchTemperatureUnit value)
        switchTemperatureUnit,
  }) {
    return switchTemperatureUnit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetWeather value)? getWeather,
    TResult? Function(SwitchTemperatureUnit value)? switchTemperatureUnit,
  }) {
    return switchTemperatureUnit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWeather value)? getWeather,
    TResult Function(SwitchTemperatureUnit value)? switchTemperatureUnit,
    required TResult orElse(),
  }) {
    if (switchTemperatureUnit != null) {
      return switchTemperatureUnit(this);
    }
    return orElse();
  }
}

abstract class SwitchTemperatureUnit implements WeatherEvent {
  factory SwitchTemperatureUnit() = _$SwitchTemperatureUnitImpl;
}

/// @nodoc
mixin _$WeatherState {
  WeatherResponse? get weatherResponse => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  AppError? get error => throw _privateConstructorUsedError;
  TemperatureUnit get unit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {WeatherResponse? weatherResponse,
      bool isLoading,
      AppError? error,
      TemperatureUnit unit});

  $WeatherResponseCopyWith<$Res>? get weatherResponse;
  $AppErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherResponse = freezed,
    Object? isLoading = null,
    Object? error = freezed,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      weatherResponse: freezed == weatherResponse
          ? _value.weatherResponse
          : weatherResponse // ignore: cast_nullable_to_non_nullable
              as WeatherResponse?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError?,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as TemperatureUnit,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherResponseCopyWith<$Res>? get weatherResponse {
    if (_value.weatherResponse == null) {
      return null;
    }

    return $WeatherResponseCopyWith<$Res>(_value.weatherResponse!, (value) {
      return _then(_value.copyWith(weatherResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $AppErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherStateImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$WeatherStateImplCopyWith(
          _$WeatherStateImpl value, $Res Function(_$WeatherStateImpl) then) =
      __$$WeatherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WeatherResponse? weatherResponse,
      bool isLoading,
      AppError? error,
      TemperatureUnit unit});

  @override
  $WeatherResponseCopyWith<$Res>? get weatherResponse;
  @override
  $AppErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$WeatherStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateImpl>
    implements _$$WeatherStateImplCopyWith<$Res> {
  __$$WeatherStateImplCopyWithImpl(
      _$WeatherStateImpl _value, $Res Function(_$WeatherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherResponse = freezed,
    Object? isLoading = null,
    Object? error = freezed,
    Object? unit = null,
  }) {
    return _then(_$WeatherStateImpl(
      weatherResponse: freezed == weatherResponse
          ? _value.weatherResponse
          : weatherResponse // ignore: cast_nullable_to_non_nullable
              as WeatherResponse?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError?,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as TemperatureUnit,
    ));
  }
}

/// @nodoc

class _$WeatherStateImpl implements _WeatherState {
  _$WeatherStateImpl(
      {this.weatherResponse,
      this.isLoading = false,
      this.error,
      this.unit = TemperatureUnit.celsius});

  @override
  final WeatherResponse? weatherResponse;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final AppError? error;
  @override
  @JsonKey()
  final TemperatureUnit unit;

  @override
  String toString() {
    return 'WeatherState(weatherResponse: $weatherResponse, isLoading: $isLoading, error: $error, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateImpl &&
            (identical(other.weatherResponse, weatherResponse) ||
                other.weatherResponse == weatherResponse) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, weatherResponse, isLoading, error, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      __$$WeatherStateImplCopyWithImpl<_$WeatherStateImpl>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  factory _WeatherState(
      {final WeatherResponse? weatherResponse,
      final bool isLoading,
      final AppError? error,
      final TemperatureUnit unit}) = _$WeatherStateImpl;

  @override
  WeatherResponse? get weatherResponse;
  @override
  bool get isLoading;
  @override
  AppError? get error;
  @override
  TemperatureUnit get unit;
  @override
  @JsonKey(ignore: true)
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
