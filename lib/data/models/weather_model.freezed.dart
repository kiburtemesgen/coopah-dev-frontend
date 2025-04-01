// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  MainWeather? get main => throw _privateConstructorUsedError;
  List<WeatherDetail> get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call({MainWeather? main, List<WeatherDetail> weather});

  $MainWeatherCopyWith<$Res>? get main;
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? weather = null,
  }) {
    return _then(_value.copyWith(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainWeather?,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDetail>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainWeatherCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $MainWeatherCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
          _$WeatherModelImpl value, $Res Function(_$WeatherModelImpl) then) =
      __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainWeather? main, List<WeatherDetail> weather});

  @override
  $MainWeatherCopyWith<$Res>? get main;
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
      _$WeatherModelImpl _value, $Res Function(_$WeatherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? weather = null,
  }) {
    return _then(_$WeatherModelImpl(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainWeather?,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl with DiagnosticableTreeMixin implements _WeatherModel {
  const _$WeatherModelImpl(
      {this.main, final List<WeatherDetail> weather = const []})
      : _weather = weather;

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  @override
  final MainWeather? main;
  final List<WeatherDetail> _weather;
  @override
  @JsonKey()
  List<WeatherDetail> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherModel(main: $main, weather: $weather)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherModel'))
      ..add(DiagnosticsProperty('main', main))
      ..add(DiagnosticsProperty('weather', weather));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, main, const DeepCollectionEquality().hash(_weather));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
      {final MainWeather? main,
      final List<WeatherDetail> weather}) = _$WeatherModelImpl;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  MainWeather? get main;
  @override
  List<WeatherDetail> get weather;
  @override
  @JsonKey(ignore: true)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainWeather _$MainWeatherFromJson(Map<String, dynamic> json) {
  return _MainWeather.fromJson(json);
}

/// @nodoc
mixin _$MainWeather {
  double? get temp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainWeatherCopyWith<MainWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainWeatherCopyWith<$Res> {
  factory $MainWeatherCopyWith(
          MainWeather value, $Res Function(MainWeather) then) =
      _$MainWeatherCopyWithImpl<$Res, MainWeather>;
  @useResult
  $Res call({double? temp});
}

/// @nodoc
class _$MainWeatherCopyWithImpl<$Res, $Val extends MainWeather>
    implements $MainWeatherCopyWith<$Res> {
  _$MainWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
  }) {
    return _then(_value.copyWith(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainWeatherImplCopyWith<$Res>
    implements $MainWeatherCopyWith<$Res> {
  factory _$$MainWeatherImplCopyWith(
          _$MainWeatherImpl value, $Res Function(_$MainWeatherImpl) then) =
      __$$MainWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? temp});
}

/// @nodoc
class __$$MainWeatherImplCopyWithImpl<$Res>
    extends _$MainWeatherCopyWithImpl<$Res, _$MainWeatherImpl>
    implements _$$MainWeatherImplCopyWith<$Res> {
  __$$MainWeatherImplCopyWithImpl(
      _$MainWeatherImpl _value, $Res Function(_$MainWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
  }) {
    return _then(_$MainWeatherImpl(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainWeatherImpl with DiagnosticableTreeMixin implements _MainWeather {
  const _$MainWeatherImpl({this.temp});

  factory _$MainWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainWeatherImplFromJson(json);

  @override
  final double? temp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainWeather(temp: $temp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainWeather'))
      ..add(DiagnosticsProperty('temp', temp));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainWeatherImpl &&
            (identical(other.temp, temp) || other.temp == temp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainWeatherImplCopyWith<_$MainWeatherImpl> get copyWith =>
      __$$MainWeatherImplCopyWithImpl<_$MainWeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainWeatherImplToJson(
      this,
    );
  }
}

abstract class _MainWeather implements MainWeather {
  const factory _MainWeather({final double? temp}) = _$MainWeatherImpl;

  factory _MainWeather.fromJson(Map<String, dynamic> json) =
      _$MainWeatherImpl.fromJson;

  @override
  double? get temp;
  @override
  @JsonKey(ignore: true)
  _$$MainWeatherImplCopyWith<_$MainWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherDetail _$WeatherDetailFromJson(Map<String, dynamic> json) {
  return _WeatherDetail.fromJson(json);
}

/// @nodoc
mixin _$WeatherDetail {
  String? get main => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDetailCopyWith<WeatherDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDetailCopyWith<$Res> {
  factory $WeatherDetailCopyWith(
          WeatherDetail value, $Res Function(WeatherDetail) then) =
      _$WeatherDetailCopyWithImpl<$Res, WeatherDetail>;
  @useResult
  $Res call({String? main, String? description, String? icon});
}

/// @nodoc
class _$WeatherDetailCopyWithImpl<$Res, $Val extends WeatherDetail>
    implements $WeatherDetailCopyWith<$Res> {
  _$WeatherDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherDetailImplCopyWith<$Res>
    implements $WeatherDetailCopyWith<$Res> {
  factory _$$WeatherDetailImplCopyWith(
          _$WeatherDetailImpl value, $Res Function(_$WeatherDetailImpl) then) =
      __$$WeatherDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? main, String? description, String? icon});
}

/// @nodoc
class __$$WeatherDetailImplCopyWithImpl<$Res>
    extends _$WeatherDetailCopyWithImpl<$Res, _$WeatherDetailImpl>
    implements _$$WeatherDetailImplCopyWith<$Res> {
  __$$WeatherDetailImplCopyWithImpl(
      _$WeatherDetailImpl _value, $Res Function(_$WeatherDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$WeatherDetailImpl(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherDetailImpl
    with DiagnosticableTreeMixin
    implements _WeatherDetail {
  const _$WeatherDetailImpl({this.main, this.description, this.icon});

  factory _$WeatherDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDetailImplFromJson(json);

  @override
  final String? main;
  @override
  final String? description;
  @override
  final String? icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherDetail(main: $main, description: $description, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherDetail'))
      ..add(DiagnosticsProperty('main', main))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDetailImpl &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, main, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDetailImplCopyWith<_$WeatherDetailImpl> get copyWith =>
      __$$WeatherDetailImplCopyWithImpl<_$WeatherDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDetailImplToJson(
      this,
    );
  }
}

abstract class _WeatherDetail implements WeatherDetail {
  const factory _WeatherDetail(
      {final String? main,
      final String? description,
      final String? icon}) = _$WeatherDetailImpl;

  factory _WeatherDetail.fromJson(Map<String, dynamic> json) =
      _$WeatherDetailImpl.fromJson;

  @override
  String? get main;
  @override
  String? get description;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$WeatherDetailImplCopyWith<_$WeatherDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
