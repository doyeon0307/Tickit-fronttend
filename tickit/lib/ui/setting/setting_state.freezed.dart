// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingState {
  LoadingStatus get loadingStatus => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  bool get darkMode => throw _privateConstructorUsedError;
  bool get scheduleAlarm => throw _privateConstructorUsedError;
  bool get ticketAlarm => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
  String get successMsg => throw _privateConstructorUsedError;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call(
      {LoadingStatus loadingStatus,
      String username,
      bool darkMode,
      bool scheduleAlarm,
      bool ticketAlarm,
      String errorMsg,
      String successMsg});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingStatus = null,
    Object? username = null,
    Object? darkMode = null,
    Object? scheduleAlarm = null,
    Object? ticketAlarm = null,
    Object? errorMsg = null,
    Object? successMsg = null,
  }) {
    return _then(_value.copyWith(
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      darkMode: null == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      scheduleAlarm: null == scheduleAlarm
          ? _value.scheduleAlarm
          : scheduleAlarm // ignore: cast_nullable_to_non_nullable
              as bool,
      ticketAlarm: null == ticketAlarm
          ? _value.ticketAlarm
          : ticketAlarm // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      successMsg: null == successMsg
          ? _value.successMsg
          : successMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingStateImplCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$SettingStateImplCopyWith(
          _$SettingStateImpl value, $Res Function(_$SettingStateImpl) then) =
      __$$SettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingStatus loadingStatus,
      String username,
      bool darkMode,
      bool scheduleAlarm,
      bool ticketAlarm,
      String errorMsg,
      String successMsg});
}

/// @nodoc
class __$$SettingStateImplCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingStateImpl>
    implements _$$SettingStateImplCopyWith<$Res> {
  __$$SettingStateImplCopyWithImpl(
      _$SettingStateImpl _value, $Res Function(_$SettingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingStatus = null,
    Object? username = null,
    Object? darkMode = null,
    Object? scheduleAlarm = null,
    Object? ticketAlarm = null,
    Object? errorMsg = null,
    Object? successMsg = null,
  }) {
    return _then(_$SettingStateImpl(
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      darkMode: null == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      scheduleAlarm: null == scheduleAlarm
          ? _value.scheduleAlarm
          : scheduleAlarm // ignore: cast_nullable_to_non_nullable
              as bool,
      ticketAlarm: null == ticketAlarm
          ? _value.ticketAlarm
          : ticketAlarm // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      successMsg: null == successMsg
          ? _value.successMsg
          : successMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SettingStateImpl implements _SettingState {
  _$SettingStateImpl(
      {this.loadingStatus = LoadingStatus.none,
      this.username = "",
      this.darkMode = false,
      this.scheduleAlarm = false,
      this.ticketAlarm = true,
      this.errorMsg = "",
      this.successMsg = ""});

  @override
  @JsonKey()
  final LoadingStatus loadingStatus;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final bool darkMode;
  @override
  @JsonKey()
  final bool scheduleAlarm;
  @override
  @JsonKey()
  final bool ticketAlarm;
  @override
  @JsonKey()
  final String errorMsg;
  @override
  @JsonKey()
  final String successMsg;

  @override
  String toString() {
    return 'SettingState(loadingStatus: $loadingStatus, username: $username, darkMode: $darkMode, scheduleAlarm: $scheduleAlarm, ticketAlarm: $ticketAlarm, errorMsg: $errorMsg, successMsg: $successMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingStateImpl &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.darkMode, darkMode) ||
                other.darkMode == darkMode) &&
            (identical(other.scheduleAlarm, scheduleAlarm) ||
                other.scheduleAlarm == scheduleAlarm) &&
            (identical(other.ticketAlarm, ticketAlarm) ||
                other.ticketAlarm == ticketAlarm) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.successMsg, successMsg) ||
                other.successMsg == successMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingStatus, username,
      darkMode, scheduleAlarm, ticketAlarm, errorMsg, successMsg);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      __$$SettingStateImplCopyWithImpl<_$SettingStateImpl>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  factory _SettingState(
      {final LoadingStatus loadingStatus,
      final String username,
      final bool darkMode,
      final bool scheduleAlarm,
      final bool ticketAlarm,
      final String errorMsg,
      final String successMsg}) = _$SettingStateImpl;

  @override
  LoadingStatus get loadingStatus;
  @override
  String get username;
  @override
  bool get darkMode;
  @override
  bool get scheduleAlarm;
  @override
  bool get ticketAlarm;
  @override
  String get errorMsg;
  @override
  String get successMsg;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
