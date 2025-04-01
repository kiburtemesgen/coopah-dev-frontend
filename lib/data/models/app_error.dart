import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'app_error.freezed.dart';
part 'app_error.g.dart';

@freezed
class AppError with _$AppError {
  const factory AppError({
    String? code,
    String? message,
  }) = _AppError;

  factory AppError.fromJson(Map<String, Object?> json) =>
      _$AppErrorFromJson(json);
}
