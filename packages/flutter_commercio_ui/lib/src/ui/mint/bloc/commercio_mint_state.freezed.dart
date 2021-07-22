// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'commercio_mint_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommercioMintDeriveCCCStateTearOff {
  const _$CommercioMintDeriveCCCStateTearOff();

  CommercioMintDeriveCCCStateData call({required MintCcc mintCcc}) {
    return CommercioMintDeriveCCCStateData(
      mintCcc: mintCcc,
    );
  }

  CommercioMintDeriveCCCStateInitial initial() {
    return const CommercioMintDeriveCCCStateInitial();
  }

  CommercioMintDeriveCCCStateLoading loading() {
    return const CommercioMintDeriveCCCStateLoading();
  }

  CommercioMintDeriveCCCStateError error([String? error]) {
    return CommercioMintDeriveCCCStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioMintDeriveCCCState = _$CommercioMintDeriveCCCStateTearOff();

/// @nodoc
mixin _$CommercioMintDeriveCCCState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MintCcc mintCcc) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MintCcc mintCcc)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintDeriveCCCStateData value) $default, {
    required TResult Function(CommercioMintDeriveCCCStateInitial value) initial,
    required TResult Function(CommercioMintDeriveCCCStateLoading value) loading,
    required TResult Function(CommercioMintDeriveCCCStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintDeriveCCCStateData value)? $default, {
    TResult Function(CommercioMintDeriveCCCStateInitial value)? initial,
    TResult Function(CommercioMintDeriveCCCStateLoading value)? loading,
    TResult Function(CommercioMintDeriveCCCStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioMintDeriveCCCStateCopyWith<$Res> {
  factory $CommercioMintDeriveCCCStateCopyWith(
          CommercioMintDeriveCCCState value,
          $Res Function(CommercioMintDeriveCCCState) then) =
      _$CommercioMintDeriveCCCStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioMintDeriveCCCStateCopyWithImpl<$Res>
    implements $CommercioMintDeriveCCCStateCopyWith<$Res> {
  _$CommercioMintDeriveCCCStateCopyWithImpl(this._value, this._then);

  final CommercioMintDeriveCCCState _value;
  // ignore: unused_field
  final $Res Function(CommercioMintDeriveCCCState) _then;
}

/// @nodoc
abstract class $CommercioMintDeriveCCCStateDataCopyWith<$Res> {
  factory $CommercioMintDeriveCCCStateDataCopyWith(
          CommercioMintDeriveCCCStateData value,
          $Res Function(CommercioMintDeriveCCCStateData) then) =
      _$CommercioMintDeriveCCCStateDataCopyWithImpl<$Res>;
  $Res call({MintCcc mintCcc});
}

/// @nodoc
class _$CommercioMintDeriveCCCStateDataCopyWithImpl<$Res>
    extends _$CommercioMintDeriveCCCStateCopyWithImpl<$Res>
    implements $CommercioMintDeriveCCCStateDataCopyWith<$Res> {
  _$CommercioMintDeriveCCCStateDataCopyWithImpl(
      CommercioMintDeriveCCCStateData _value,
      $Res Function(CommercioMintDeriveCCCStateData) _then)
      : super(_value, (v) => _then(v as CommercioMintDeriveCCCStateData));

  @override
  CommercioMintDeriveCCCStateData get _value =>
      super._value as CommercioMintDeriveCCCStateData;

  @override
  $Res call({
    Object? mintCcc = freezed,
  }) {
    return _then(CommercioMintDeriveCCCStateData(
      mintCcc: mintCcc == freezed
          ? _value.mintCcc
          : mintCcc // ignore: cast_nullable_to_non_nullable
              as MintCcc,
    ));
  }
}

/// @nodoc

class _$CommercioMintDeriveCCCStateData
    with DiagnosticableTreeMixin
    implements CommercioMintDeriveCCCStateData {
  const _$CommercioMintDeriveCCCStateData({required this.mintCcc});

  @override
  final MintCcc mintCcc;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintDeriveCCCState(mintCcc: $mintCcc)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioMintDeriveCCCState'))
      ..add(DiagnosticsProperty('mintCcc', mintCcc));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintDeriveCCCStateData &&
            (identical(other.mintCcc, mintCcc) ||
                const DeepCollectionEquality().equals(other.mintCcc, mintCcc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mintCcc);

  @JsonKey(ignore: true)
  @override
  $CommercioMintDeriveCCCStateDataCopyWith<CommercioMintDeriveCCCStateData>
      get copyWith => _$CommercioMintDeriveCCCStateDataCopyWithImpl<
          CommercioMintDeriveCCCStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MintCcc mintCcc) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(mintCcc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MintCcc mintCcc)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(mintCcc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintDeriveCCCStateData value) $default, {
    required TResult Function(CommercioMintDeriveCCCStateInitial value) initial,
    required TResult Function(CommercioMintDeriveCCCStateLoading value) loading,
    required TResult Function(CommercioMintDeriveCCCStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintDeriveCCCStateData value)? $default, {
    TResult Function(CommercioMintDeriveCCCStateInitial value)? initial,
    TResult Function(CommercioMintDeriveCCCStateLoading value)? loading,
    TResult Function(CommercioMintDeriveCCCStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioMintDeriveCCCStateData
    implements CommercioMintDeriveCCCState {
  const factory CommercioMintDeriveCCCStateData({required MintCcc mintCcc}) =
      _$CommercioMintDeriveCCCStateData;

  MintCcc get mintCcc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioMintDeriveCCCStateDataCopyWith<CommercioMintDeriveCCCStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioMintDeriveCCCStateInitialCopyWith<$Res> {
  factory $CommercioMintDeriveCCCStateInitialCopyWith(
          CommercioMintDeriveCCCStateInitial value,
          $Res Function(CommercioMintDeriveCCCStateInitial) then) =
      _$CommercioMintDeriveCCCStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioMintDeriveCCCStateInitialCopyWithImpl<$Res>
    extends _$CommercioMintDeriveCCCStateCopyWithImpl<$Res>
    implements $CommercioMintDeriveCCCStateInitialCopyWith<$Res> {
  _$CommercioMintDeriveCCCStateInitialCopyWithImpl(
      CommercioMintDeriveCCCStateInitial _value,
      $Res Function(CommercioMintDeriveCCCStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioMintDeriveCCCStateInitial));

  @override
  CommercioMintDeriveCCCStateInitial get _value =>
      super._value as CommercioMintDeriveCCCStateInitial;
}

/// @nodoc

class _$CommercioMintDeriveCCCStateInitial
    with DiagnosticableTreeMixin
    implements CommercioMintDeriveCCCStateInitial {
  const _$CommercioMintDeriveCCCStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintDeriveCCCState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioMintDeriveCCCState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintDeriveCCCStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MintCcc mintCcc) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MintCcc mintCcc)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintDeriveCCCStateData value) $default, {
    required TResult Function(CommercioMintDeriveCCCStateInitial value) initial,
    required TResult Function(CommercioMintDeriveCCCStateLoading value) loading,
    required TResult Function(CommercioMintDeriveCCCStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintDeriveCCCStateData value)? $default, {
    TResult Function(CommercioMintDeriveCCCStateInitial value)? initial,
    TResult Function(CommercioMintDeriveCCCStateLoading value)? loading,
    TResult Function(CommercioMintDeriveCCCStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioMintDeriveCCCStateInitial
    implements CommercioMintDeriveCCCState {
  const factory CommercioMintDeriveCCCStateInitial() =
      _$CommercioMintDeriveCCCStateInitial;
}

/// @nodoc
abstract class $CommercioMintDeriveCCCStateLoadingCopyWith<$Res> {
  factory $CommercioMintDeriveCCCStateLoadingCopyWith(
          CommercioMintDeriveCCCStateLoading value,
          $Res Function(CommercioMintDeriveCCCStateLoading) then) =
      _$CommercioMintDeriveCCCStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioMintDeriveCCCStateLoadingCopyWithImpl<$Res>
    extends _$CommercioMintDeriveCCCStateCopyWithImpl<$Res>
    implements $CommercioMintDeriveCCCStateLoadingCopyWith<$Res> {
  _$CommercioMintDeriveCCCStateLoadingCopyWithImpl(
      CommercioMintDeriveCCCStateLoading _value,
      $Res Function(CommercioMintDeriveCCCStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioMintDeriveCCCStateLoading));

  @override
  CommercioMintDeriveCCCStateLoading get _value =>
      super._value as CommercioMintDeriveCCCStateLoading;
}

/// @nodoc

class _$CommercioMintDeriveCCCStateLoading
    with DiagnosticableTreeMixin
    implements CommercioMintDeriveCCCStateLoading {
  const _$CommercioMintDeriveCCCStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintDeriveCCCState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioMintDeriveCCCState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintDeriveCCCStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MintCcc mintCcc) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MintCcc mintCcc)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintDeriveCCCStateData value) $default, {
    required TResult Function(CommercioMintDeriveCCCStateInitial value) initial,
    required TResult Function(CommercioMintDeriveCCCStateLoading value) loading,
    required TResult Function(CommercioMintDeriveCCCStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintDeriveCCCStateData value)? $default, {
    TResult Function(CommercioMintDeriveCCCStateInitial value)? initial,
    TResult Function(CommercioMintDeriveCCCStateLoading value)? loading,
    TResult Function(CommercioMintDeriveCCCStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioMintDeriveCCCStateLoading
    implements CommercioMintDeriveCCCState {
  const factory CommercioMintDeriveCCCStateLoading() =
      _$CommercioMintDeriveCCCStateLoading;
}

/// @nodoc
abstract class $CommercioMintDeriveCCCStateErrorCopyWith<$Res> {
  factory $CommercioMintDeriveCCCStateErrorCopyWith(
          CommercioMintDeriveCCCStateError value,
          $Res Function(CommercioMintDeriveCCCStateError) then) =
      _$CommercioMintDeriveCCCStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioMintDeriveCCCStateErrorCopyWithImpl<$Res>
    extends _$CommercioMintDeriveCCCStateCopyWithImpl<$Res>
    implements $CommercioMintDeriveCCCStateErrorCopyWith<$Res> {
  _$CommercioMintDeriveCCCStateErrorCopyWithImpl(
      CommercioMintDeriveCCCStateError _value,
      $Res Function(CommercioMintDeriveCCCStateError) _then)
      : super(_value, (v) => _then(v as CommercioMintDeriveCCCStateError));

  @override
  CommercioMintDeriveCCCStateError get _value =>
      super._value as CommercioMintDeriveCCCStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioMintDeriveCCCStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioMintDeriveCCCStateError
    with DiagnosticableTreeMixin
    implements CommercioMintDeriveCCCStateError {
  const _$CommercioMintDeriveCCCStateError([this.error]);

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintDeriveCCCState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioMintDeriveCCCState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintDeriveCCCStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioMintDeriveCCCStateErrorCopyWith<CommercioMintDeriveCCCStateError>
      get copyWith => _$CommercioMintDeriveCCCStateErrorCopyWithImpl<
          CommercioMintDeriveCCCStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MintCcc mintCcc) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MintCcc mintCcc)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintDeriveCCCStateData value) $default, {
    required TResult Function(CommercioMintDeriveCCCStateInitial value) initial,
    required TResult Function(CommercioMintDeriveCCCStateLoading value) loading,
    required TResult Function(CommercioMintDeriveCCCStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintDeriveCCCStateData value)? $default, {
    TResult Function(CommercioMintDeriveCCCStateInitial value)? initial,
    TResult Function(CommercioMintDeriveCCCStateLoading value)? loading,
    TResult Function(CommercioMintDeriveCCCStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioMintDeriveCCCStateError
    implements CommercioMintDeriveCCCState {
  const factory CommercioMintDeriveCCCStateError([String? error]) =
      _$CommercioMintDeriveCCCStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioMintDeriveCCCStateErrorCopyWith<CommercioMintDeriveCCCStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioMintMintedCCCStateTearOff {
  const _$CommercioMintMintedCCCStateTearOff();

  CommercioMintMintedCCCStateData call({required TransactionResult result}) {
    return CommercioMintMintedCCCStateData(
      result: result,
    );
  }

  CommercioMintMintedCCCStateInitial initial() {
    return const CommercioMintMintedCCCStateInitial();
  }

  CommercioMintMintedCCCStateLoading loading() {
    return const CommercioMintMintedCCCStateLoading();
  }

  CommercioMintMintedCCCStateError error([String? error]) {
    return CommercioMintMintedCCCStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioMintMintedCCCState = _$CommercioMintMintedCCCStateTearOff();

/// @nodoc
mixin _$CommercioMintMintedCCCState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintMintedCCCStateData value) $default, {
    required TResult Function(CommercioMintMintedCCCStateInitial value) initial,
    required TResult Function(CommercioMintMintedCCCStateLoading value) loading,
    required TResult Function(CommercioMintMintedCCCStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintMintedCCCStateData value)? $default, {
    TResult Function(CommercioMintMintedCCCStateInitial value)? initial,
    TResult Function(CommercioMintMintedCCCStateLoading value)? loading,
    TResult Function(CommercioMintMintedCCCStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioMintMintedCCCStateCopyWith<$Res> {
  factory $CommercioMintMintedCCCStateCopyWith(
          CommercioMintMintedCCCState value,
          $Res Function(CommercioMintMintedCCCState) then) =
      _$CommercioMintMintedCCCStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioMintMintedCCCStateCopyWithImpl<$Res>
    implements $CommercioMintMintedCCCStateCopyWith<$Res> {
  _$CommercioMintMintedCCCStateCopyWithImpl(this._value, this._then);

  final CommercioMintMintedCCCState _value;
  // ignore: unused_field
  final $Res Function(CommercioMintMintedCCCState) _then;
}

/// @nodoc
abstract class $CommercioMintMintedCCCStateDataCopyWith<$Res> {
  factory $CommercioMintMintedCCCStateDataCopyWith(
          CommercioMintMintedCCCStateData value,
          $Res Function(CommercioMintMintedCCCStateData) then) =
      _$CommercioMintMintedCCCStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

/// @nodoc
class _$CommercioMintMintedCCCStateDataCopyWithImpl<$Res>
    extends _$CommercioMintMintedCCCStateCopyWithImpl<$Res>
    implements $CommercioMintMintedCCCStateDataCopyWith<$Res> {
  _$CommercioMintMintedCCCStateDataCopyWithImpl(
      CommercioMintMintedCCCStateData _value,
      $Res Function(CommercioMintMintedCCCStateData) _then)
      : super(_value, (v) => _then(v as CommercioMintMintedCCCStateData));

  @override
  CommercioMintMintedCCCStateData get _value =>
      super._value as CommercioMintMintedCCCStateData;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(CommercioMintMintedCCCStateData(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TransactionResult,
    ));
  }
}

/// @nodoc

class _$CommercioMintMintedCCCStateData
    with DiagnosticableTreeMixin
    implements CommercioMintMintedCCCStateData {
  const _$CommercioMintMintedCCCStateData({required this.result});

  @override
  final TransactionResult result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintMintedCCCState(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioMintMintedCCCState'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintMintedCCCStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $CommercioMintMintedCCCStateDataCopyWith<CommercioMintMintedCCCStateData>
      get copyWith => _$CommercioMintMintedCCCStateDataCopyWithImpl<
          CommercioMintMintedCCCStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintMintedCCCStateData value) $default, {
    required TResult Function(CommercioMintMintedCCCStateInitial value) initial,
    required TResult Function(CommercioMintMintedCCCStateLoading value) loading,
    required TResult Function(CommercioMintMintedCCCStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintMintedCCCStateData value)? $default, {
    TResult Function(CommercioMintMintedCCCStateInitial value)? initial,
    TResult Function(CommercioMintMintedCCCStateLoading value)? loading,
    TResult Function(CommercioMintMintedCCCStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioMintMintedCCCStateData
    implements CommercioMintMintedCCCState {
  const factory CommercioMintMintedCCCStateData(
      {required TransactionResult result}) = _$CommercioMintMintedCCCStateData;

  TransactionResult get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioMintMintedCCCStateDataCopyWith<CommercioMintMintedCCCStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioMintMintedCCCStateInitialCopyWith<$Res> {
  factory $CommercioMintMintedCCCStateInitialCopyWith(
          CommercioMintMintedCCCStateInitial value,
          $Res Function(CommercioMintMintedCCCStateInitial) then) =
      _$CommercioMintMintedCCCStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioMintMintedCCCStateInitialCopyWithImpl<$Res>
    extends _$CommercioMintMintedCCCStateCopyWithImpl<$Res>
    implements $CommercioMintMintedCCCStateInitialCopyWith<$Res> {
  _$CommercioMintMintedCCCStateInitialCopyWithImpl(
      CommercioMintMintedCCCStateInitial _value,
      $Res Function(CommercioMintMintedCCCStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioMintMintedCCCStateInitial));

  @override
  CommercioMintMintedCCCStateInitial get _value =>
      super._value as CommercioMintMintedCCCStateInitial;
}

/// @nodoc

class _$CommercioMintMintedCCCStateInitial
    with DiagnosticableTreeMixin
    implements CommercioMintMintedCCCStateInitial {
  const _$CommercioMintMintedCCCStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintMintedCCCState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioMintMintedCCCState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintMintedCCCStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintMintedCCCStateData value) $default, {
    required TResult Function(CommercioMintMintedCCCStateInitial value) initial,
    required TResult Function(CommercioMintMintedCCCStateLoading value) loading,
    required TResult Function(CommercioMintMintedCCCStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintMintedCCCStateData value)? $default, {
    TResult Function(CommercioMintMintedCCCStateInitial value)? initial,
    TResult Function(CommercioMintMintedCCCStateLoading value)? loading,
    TResult Function(CommercioMintMintedCCCStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioMintMintedCCCStateInitial
    implements CommercioMintMintedCCCState {
  const factory CommercioMintMintedCCCStateInitial() =
      _$CommercioMintMintedCCCStateInitial;
}

/// @nodoc
abstract class $CommercioMintMintedCCCStateLoadingCopyWith<$Res> {
  factory $CommercioMintMintedCCCStateLoadingCopyWith(
          CommercioMintMintedCCCStateLoading value,
          $Res Function(CommercioMintMintedCCCStateLoading) then) =
      _$CommercioMintMintedCCCStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioMintMintedCCCStateLoadingCopyWithImpl<$Res>
    extends _$CommercioMintMintedCCCStateCopyWithImpl<$Res>
    implements $CommercioMintMintedCCCStateLoadingCopyWith<$Res> {
  _$CommercioMintMintedCCCStateLoadingCopyWithImpl(
      CommercioMintMintedCCCStateLoading _value,
      $Res Function(CommercioMintMintedCCCStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioMintMintedCCCStateLoading));

  @override
  CommercioMintMintedCCCStateLoading get _value =>
      super._value as CommercioMintMintedCCCStateLoading;
}

/// @nodoc

class _$CommercioMintMintedCCCStateLoading
    with DiagnosticableTreeMixin
    implements CommercioMintMintedCCCStateLoading {
  const _$CommercioMintMintedCCCStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintMintedCCCState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioMintMintedCCCState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintMintedCCCStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintMintedCCCStateData value) $default, {
    required TResult Function(CommercioMintMintedCCCStateInitial value) initial,
    required TResult Function(CommercioMintMintedCCCStateLoading value) loading,
    required TResult Function(CommercioMintMintedCCCStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintMintedCCCStateData value)? $default, {
    TResult Function(CommercioMintMintedCCCStateInitial value)? initial,
    TResult Function(CommercioMintMintedCCCStateLoading value)? loading,
    TResult Function(CommercioMintMintedCCCStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioMintMintedCCCStateLoading
    implements CommercioMintMintedCCCState {
  const factory CommercioMintMintedCCCStateLoading() =
      _$CommercioMintMintedCCCStateLoading;
}

/// @nodoc
abstract class $CommercioMintMintedCCCStateErrorCopyWith<$Res> {
  factory $CommercioMintMintedCCCStateErrorCopyWith(
          CommercioMintMintedCCCStateError value,
          $Res Function(CommercioMintMintedCCCStateError) then) =
      _$CommercioMintMintedCCCStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioMintMintedCCCStateErrorCopyWithImpl<$Res>
    extends _$CommercioMintMintedCCCStateCopyWithImpl<$Res>
    implements $CommercioMintMintedCCCStateErrorCopyWith<$Res> {
  _$CommercioMintMintedCCCStateErrorCopyWithImpl(
      CommercioMintMintedCCCStateError _value,
      $Res Function(CommercioMintMintedCCCStateError) _then)
      : super(_value, (v) => _then(v as CommercioMintMintedCCCStateError));

  @override
  CommercioMintMintedCCCStateError get _value =>
      super._value as CommercioMintMintedCCCStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioMintMintedCCCStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioMintMintedCCCStateError
    with DiagnosticableTreeMixin
    implements CommercioMintMintedCCCStateError {
  const _$CommercioMintMintedCCCStateError([this.error]);

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintMintedCCCState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioMintMintedCCCState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintMintedCCCStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioMintMintedCCCStateErrorCopyWith<CommercioMintMintedCCCStateError>
      get copyWith => _$CommercioMintMintedCCCStateErrorCopyWithImpl<
          CommercioMintMintedCCCStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintMintedCCCStateData value) $default, {
    required TResult Function(CommercioMintMintedCCCStateInitial value) initial,
    required TResult Function(CommercioMintMintedCCCStateLoading value) loading,
    required TResult Function(CommercioMintMintedCCCStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintMintedCCCStateData value)? $default, {
    TResult Function(CommercioMintMintedCCCStateInitial value)? initial,
    TResult Function(CommercioMintMintedCCCStateLoading value)? loading,
    TResult Function(CommercioMintMintedCCCStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioMintMintedCCCStateError
    implements CommercioMintMintedCCCState {
  const factory CommercioMintMintedCCCStateError([String? error]) =
      _$CommercioMintMintedCCCStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioMintMintedCCCStateErrorCopyWith<CommercioMintMintedCCCStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioMintDeriveBurnCCCStateTearOff {
  const _$CommercioMintDeriveBurnCCCStateTearOff();

  CommercioMintDeriveBurnCCCStateData call({required BurnCcc burnCcc}) {
    return CommercioMintDeriveBurnCCCStateData(
      burnCcc: burnCcc,
    );
  }

  CommercioMintDeriveBurnCCCStateInitial initial() {
    return const CommercioMintDeriveBurnCCCStateInitial();
  }

  CommercioMintDeriveBurnCCCStateLoading loading() {
    return const CommercioMintDeriveBurnCCCStateLoading();
  }

  CommercioMintDeriveBurnCCCStateError error([String? error]) {
    return CommercioMintDeriveBurnCCCStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioMintDeriveBurnCCCState =
    _$CommercioMintDeriveBurnCCCStateTearOff();

/// @nodoc
mixin _$CommercioMintDeriveBurnCCCState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BurnCcc burnCcc) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BurnCcc burnCcc)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintDeriveBurnCCCStateData value) $default, {
    required TResult Function(CommercioMintDeriveBurnCCCStateInitial value)
        initial,
    required TResult Function(CommercioMintDeriveBurnCCCStateLoading value)
        loading,
    required TResult Function(CommercioMintDeriveBurnCCCStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintDeriveBurnCCCStateData value)? $default, {
    TResult Function(CommercioMintDeriveBurnCCCStateInitial value)? initial,
    TResult Function(CommercioMintDeriveBurnCCCStateLoading value)? loading,
    TResult Function(CommercioMintDeriveBurnCCCStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioMintDeriveBurnCCCStateCopyWith<$Res> {
  factory $CommercioMintDeriveBurnCCCStateCopyWith(
          CommercioMintDeriveBurnCCCState value,
          $Res Function(CommercioMintDeriveBurnCCCState) then) =
      _$CommercioMintDeriveBurnCCCStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioMintDeriveBurnCCCStateCopyWithImpl<$Res>
    implements $CommercioMintDeriveBurnCCCStateCopyWith<$Res> {
  _$CommercioMintDeriveBurnCCCStateCopyWithImpl(this._value, this._then);

  final CommercioMintDeriveBurnCCCState _value;
  // ignore: unused_field
  final $Res Function(CommercioMintDeriveBurnCCCState) _then;
}

/// @nodoc
abstract class $CommercioMintDeriveBurnCCCStateDataCopyWith<$Res> {
  factory $CommercioMintDeriveBurnCCCStateDataCopyWith(
          CommercioMintDeriveBurnCCCStateData value,
          $Res Function(CommercioMintDeriveBurnCCCStateData) then) =
      _$CommercioMintDeriveBurnCCCStateDataCopyWithImpl<$Res>;
  $Res call({BurnCcc burnCcc});
}

/// @nodoc
class _$CommercioMintDeriveBurnCCCStateDataCopyWithImpl<$Res>
    extends _$CommercioMintDeriveBurnCCCStateCopyWithImpl<$Res>
    implements $CommercioMintDeriveBurnCCCStateDataCopyWith<$Res> {
  _$CommercioMintDeriveBurnCCCStateDataCopyWithImpl(
      CommercioMintDeriveBurnCCCStateData _value,
      $Res Function(CommercioMintDeriveBurnCCCStateData) _then)
      : super(_value, (v) => _then(v as CommercioMintDeriveBurnCCCStateData));

  @override
  CommercioMintDeriveBurnCCCStateData get _value =>
      super._value as CommercioMintDeriveBurnCCCStateData;

  @override
  $Res call({
    Object? burnCcc = freezed,
  }) {
    return _then(CommercioMintDeriveBurnCCCStateData(
      burnCcc: burnCcc == freezed
          ? _value.burnCcc
          : burnCcc // ignore: cast_nullable_to_non_nullable
              as BurnCcc,
    ));
  }
}

/// @nodoc

class _$CommercioMintDeriveBurnCCCStateData
    with DiagnosticableTreeMixin
    implements CommercioMintDeriveBurnCCCStateData {
  const _$CommercioMintDeriveBurnCCCStateData({required this.burnCcc});

  @override
  final BurnCcc burnCcc;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintDeriveBurnCCCState(burnCcc: $burnCcc)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioMintDeriveBurnCCCState'))
      ..add(DiagnosticsProperty('burnCcc', burnCcc));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintDeriveBurnCCCStateData &&
            (identical(other.burnCcc, burnCcc) ||
                const DeepCollectionEquality().equals(other.burnCcc, burnCcc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(burnCcc);

  @JsonKey(ignore: true)
  @override
  $CommercioMintDeriveBurnCCCStateDataCopyWith<
          CommercioMintDeriveBurnCCCStateData>
      get copyWith => _$CommercioMintDeriveBurnCCCStateDataCopyWithImpl<
          CommercioMintDeriveBurnCCCStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BurnCcc burnCcc) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(burnCcc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BurnCcc burnCcc)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(burnCcc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintDeriveBurnCCCStateData value) $default, {
    required TResult Function(CommercioMintDeriveBurnCCCStateInitial value)
        initial,
    required TResult Function(CommercioMintDeriveBurnCCCStateLoading value)
        loading,
    required TResult Function(CommercioMintDeriveBurnCCCStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintDeriveBurnCCCStateData value)? $default, {
    TResult Function(CommercioMintDeriveBurnCCCStateInitial value)? initial,
    TResult Function(CommercioMintDeriveBurnCCCStateLoading value)? loading,
    TResult Function(CommercioMintDeriveBurnCCCStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioMintDeriveBurnCCCStateData
    implements CommercioMintDeriveBurnCCCState {
  const factory CommercioMintDeriveBurnCCCStateData(
      {required BurnCcc burnCcc}) = _$CommercioMintDeriveBurnCCCStateData;

  BurnCcc get burnCcc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioMintDeriveBurnCCCStateDataCopyWith<
          CommercioMintDeriveBurnCCCStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioMintDeriveBurnCCCStateInitialCopyWith<$Res> {
  factory $CommercioMintDeriveBurnCCCStateInitialCopyWith(
          CommercioMintDeriveBurnCCCStateInitial value,
          $Res Function(CommercioMintDeriveBurnCCCStateInitial) then) =
      _$CommercioMintDeriveBurnCCCStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioMintDeriveBurnCCCStateInitialCopyWithImpl<$Res>
    extends _$CommercioMintDeriveBurnCCCStateCopyWithImpl<$Res>
    implements $CommercioMintDeriveBurnCCCStateInitialCopyWith<$Res> {
  _$CommercioMintDeriveBurnCCCStateInitialCopyWithImpl(
      CommercioMintDeriveBurnCCCStateInitial _value,
      $Res Function(CommercioMintDeriveBurnCCCStateInitial) _then)
      : super(
            _value, (v) => _then(v as CommercioMintDeriveBurnCCCStateInitial));

  @override
  CommercioMintDeriveBurnCCCStateInitial get _value =>
      super._value as CommercioMintDeriveBurnCCCStateInitial;
}

/// @nodoc

class _$CommercioMintDeriveBurnCCCStateInitial
    with DiagnosticableTreeMixin
    implements CommercioMintDeriveBurnCCCStateInitial {
  const _$CommercioMintDeriveBurnCCCStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintDeriveBurnCCCState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioMintDeriveBurnCCCState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintDeriveBurnCCCStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BurnCcc burnCcc) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BurnCcc burnCcc)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintDeriveBurnCCCStateData value) $default, {
    required TResult Function(CommercioMintDeriveBurnCCCStateInitial value)
        initial,
    required TResult Function(CommercioMintDeriveBurnCCCStateLoading value)
        loading,
    required TResult Function(CommercioMintDeriveBurnCCCStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintDeriveBurnCCCStateData value)? $default, {
    TResult Function(CommercioMintDeriveBurnCCCStateInitial value)? initial,
    TResult Function(CommercioMintDeriveBurnCCCStateLoading value)? loading,
    TResult Function(CommercioMintDeriveBurnCCCStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioMintDeriveBurnCCCStateInitial
    implements CommercioMintDeriveBurnCCCState {
  const factory CommercioMintDeriveBurnCCCStateInitial() =
      _$CommercioMintDeriveBurnCCCStateInitial;
}

/// @nodoc
abstract class $CommercioMintDeriveBurnCCCStateLoadingCopyWith<$Res> {
  factory $CommercioMintDeriveBurnCCCStateLoadingCopyWith(
          CommercioMintDeriveBurnCCCStateLoading value,
          $Res Function(CommercioMintDeriveBurnCCCStateLoading) then) =
      _$CommercioMintDeriveBurnCCCStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioMintDeriveBurnCCCStateLoadingCopyWithImpl<$Res>
    extends _$CommercioMintDeriveBurnCCCStateCopyWithImpl<$Res>
    implements $CommercioMintDeriveBurnCCCStateLoadingCopyWith<$Res> {
  _$CommercioMintDeriveBurnCCCStateLoadingCopyWithImpl(
      CommercioMintDeriveBurnCCCStateLoading _value,
      $Res Function(CommercioMintDeriveBurnCCCStateLoading) _then)
      : super(
            _value, (v) => _then(v as CommercioMintDeriveBurnCCCStateLoading));

  @override
  CommercioMintDeriveBurnCCCStateLoading get _value =>
      super._value as CommercioMintDeriveBurnCCCStateLoading;
}

/// @nodoc

class _$CommercioMintDeriveBurnCCCStateLoading
    with DiagnosticableTreeMixin
    implements CommercioMintDeriveBurnCCCStateLoading {
  const _$CommercioMintDeriveBurnCCCStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintDeriveBurnCCCState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioMintDeriveBurnCCCState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintDeriveBurnCCCStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BurnCcc burnCcc) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BurnCcc burnCcc)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintDeriveBurnCCCStateData value) $default, {
    required TResult Function(CommercioMintDeriveBurnCCCStateInitial value)
        initial,
    required TResult Function(CommercioMintDeriveBurnCCCStateLoading value)
        loading,
    required TResult Function(CommercioMintDeriveBurnCCCStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintDeriveBurnCCCStateData value)? $default, {
    TResult Function(CommercioMintDeriveBurnCCCStateInitial value)? initial,
    TResult Function(CommercioMintDeriveBurnCCCStateLoading value)? loading,
    TResult Function(CommercioMintDeriveBurnCCCStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioMintDeriveBurnCCCStateLoading
    implements CommercioMintDeriveBurnCCCState {
  const factory CommercioMintDeriveBurnCCCStateLoading() =
      _$CommercioMintDeriveBurnCCCStateLoading;
}

/// @nodoc
abstract class $CommercioMintDeriveBurnCCCStateErrorCopyWith<$Res> {
  factory $CommercioMintDeriveBurnCCCStateErrorCopyWith(
          CommercioMintDeriveBurnCCCStateError value,
          $Res Function(CommercioMintDeriveBurnCCCStateError) then) =
      _$CommercioMintDeriveBurnCCCStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioMintDeriveBurnCCCStateErrorCopyWithImpl<$Res>
    extends _$CommercioMintDeriveBurnCCCStateCopyWithImpl<$Res>
    implements $CommercioMintDeriveBurnCCCStateErrorCopyWith<$Res> {
  _$CommercioMintDeriveBurnCCCStateErrorCopyWithImpl(
      CommercioMintDeriveBurnCCCStateError _value,
      $Res Function(CommercioMintDeriveBurnCCCStateError) _then)
      : super(_value, (v) => _then(v as CommercioMintDeriveBurnCCCStateError));

  @override
  CommercioMintDeriveBurnCCCStateError get _value =>
      super._value as CommercioMintDeriveBurnCCCStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioMintDeriveBurnCCCStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioMintDeriveBurnCCCStateError
    with DiagnosticableTreeMixin
    implements CommercioMintDeriveBurnCCCStateError {
  const _$CommercioMintDeriveBurnCCCStateError([this.error]);

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintDeriveBurnCCCState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CommercioMintDeriveBurnCCCState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintDeriveBurnCCCStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioMintDeriveBurnCCCStateErrorCopyWith<
          CommercioMintDeriveBurnCCCStateError>
      get copyWith => _$CommercioMintDeriveBurnCCCStateErrorCopyWithImpl<
          CommercioMintDeriveBurnCCCStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BurnCcc burnCcc) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BurnCcc burnCcc)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintDeriveBurnCCCStateData value) $default, {
    required TResult Function(CommercioMintDeriveBurnCCCStateInitial value)
        initial,
    required TResult Function(CommercioMintDeriveBurnCCCStateLoading value)
        loading,
    required TResult Function(CommercioMintDeriveBurnCCCStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintDeriveBurnCCCStateData value)? $default, {
    TResult Function(CommercioMintDeriveBurnCCCStateInitial value)? initial,
    TResult Function(CommercioMintDeriveBurnCCCStateLoading value)? loading,
    TResult Function(CommercioMintDeriveBurnCCCStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioMintDeriveBurnCCCStateError
    implements CommercioMintDeriveBurnCCCState {
  const factory CommercioMintDeriveBurnCCCStateError([String? error]) =
      _$CommercioMintDeriveBurnCCCStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioMintDeriveBurnCCCStateErrorCopyWith<
          CommercioMintDeriveBurnCCCStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioMintBurnCCCStateTearOff {
  const _$CommercioMintBurnCCCStateTearOff();

  CommercioMintBurnCCCStateData call({required TransactionResult result}) {
    return CommercioMintBurnCCCStateData(
      result: result,
    );
  }

  CommercioMintBurnCCCStateInitial initial() {
    return const CommercioMintBurnCCCStateInitial();
  }

  CommercioMintBurnCCCStateLoading loading() {
    return const CommercioMintBurnCCCStateLoading();
  }

  CommercioMintBurnCCCStateError error([String? error]) {
    return CommercioMintBurnCCCStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioMintBurnCCCState = _$CommercioMintBurnCCCStateTearOff();

/// @nodoc
mixin _$CommercioMintBurnCCCState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintBurnCCCStateData value) $default, {
    required TResult Function(CommercioMintBurnCCCStateInitial value) initial,
    required TResult Function(CommercioMintBurnCCCStateLoading value) loading,
    required TResult Function(CommercioMintBurnCCCStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintBurnCCCStateData value)? $default, {
    TResult Function(CommercioMintBurnCCCStateInitial value)? initial,
    TResult Function(CommercioMintBurnCCCStateLoading value)? loading,
    TResult Function(CommercioMintBurnCCCStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioMintBurnCCCStateCopyWith<$Res> {
  factory $CommercioMintBurnCCCStateCopyWith(CommercioMintBurnCCCState value,
          $Res Function(CommercioMintBurnCCCState) then) =
      _$CommercioMintBurnCCCStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioMintBurnCCCStateCopyWithImpl<$Res>
    implements $CommercioMintBurnCCCStateCopyWith<$Res> {
  _$CommercioMintBurnCCCStateCopyWithImpl(this._value, this._then);

  final CommercioMintBurnCCCState _value;
  // ignore: unused_field
  final $Res Function(CommercioMintBurnCCCState) _then;
}

/// @nodoc
abstract class $CommercioMintBurnCCCStateDataCopyWith<$Res> {
  factory $CommercioMintBurnCCCStateDataCopyWith(
          CommercioMintBurnCCCStateData value,
          $Res Function(CommercioMintBurnCCCStateData) then) =
      _$CommercioMintBurnCCCStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

/// @nodoc
class _$CommercioMintBurnCCCStateDataCopyWithImpl<$Res>
    extends _$CommercioMintBurnCCCStateCopyWithImpl<$Res>
    implements $CommercioMintBurnCCCStateDataCopyWith<$Res> {
  _$CommercioMintBurnCCCStateDataCopyWithImpl(
      CommercioMintBurnCCCStateData _value,
      $Res Function(CommercioMintBurnCCCStateData) _then)
      : super(_value, (v) => _then(v as CommercioMintBurnCCCStateData));

  @override
  CommercioMintBurnCCCStateData get _value =>
      super._value as CommercioMintBurnCCCStateData;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(CommercioMintBurnCCCStateData(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TransactionResult,
    ));
  }
}

/// @nodoc

class _$CommercioMintBurnCCCStateData
    with DiagnosticableTreeMixin
    implements CommercioMintBurnCCCStateData {
  const _$CommercioMintBurnCCCStateData({required this.result});

  @override
  final TransactionResult result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintBurnCCCState(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioMintBurnCCCState'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintBurnCCCStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $CommercioMintBurnCCCStateDataCopyWith<CommercioMintBurnCCCStateData>
      get copyWith => _$CommercioMintBurnCCCStateDataCopyWithImpl<
          CommercioMintBurnCCCStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintBurnCCCStateData value) $default, {
    required TResult Function(CommercioMintBurnCCCStateInitial value) initial,
    required TResult Function(CommercioMintBurnCCCStateLoading value) loading,
    required TResult Function(CommercioMintBurnCCCStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintBurnCCCStateData value)? $default, {
    TResult Function(CommercioMintBurnCCCStateInitial value)? initial,
    TResult Function(CommercioMintBurnCCCStateLoading value)? loading,
    TResult Function(CommercioMintBurnCCCStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioMintBurnCCCStateData
    implements CommercioMintBurnCCCState {
  const factory CommercioMintBurnCCCStateData(
      {required TransactionResult result}) = _$CommercioMintBurnCCCStateData;

  TransactionResult get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioMintBurnCCCStateDataCopyWith<CommercioMintBurnCCCStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioMintBurnCCCStateInitialCopyWith<$Res> {
  factory $CommercioMintBurnCCCStateInitialCopyWith(
          CommercioMintBurnCCCStateInitial value,
          $Res Function(CommercioMintBurnCCCStateInitial) then) =
      _$CommercioMintBurnCCCStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioMintBurnCCCStateInitialCopyWithImpl<$Res>
    extends _$CommercioMintBurnCCCStateCopyWithImpl<$Res>
    implements $CommercioMintBurnCCCStateInitialCopyWith<$Res> {
  _$CommercioMintBurnCCCStateInitialCopyWithImpl(
      CommercioMintBurnCCCStateInitial _value,
      $Res Function(CommercioMintBurnCCCStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioMintBurnCCCStateInitial));

  @override
  CommercioMintBurnCCCStateInitial get _value =>
      super._value as CommercioMintBurnCCCStateInitial;
}

/// @nodoc

class _$CommercioMintBurnCCCStateInitial
    with DiagnosticableTreeMixin
    implements CommercioMintBurnCCCStateInitial {
  const _$CommercioMintBurnCCCStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintBurnCCCState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioMintBurnCCCState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintBurnCCCStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintBurnCCCStateData value) $default, {
    required TResult Function(CommercioMintBurnCCCStateInitial value) initial,
    required TResult Function(CommercioMintBurnCCCStateLoading value) loading,
    required TResult Function(CommercioMintBurnCCCStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintBurnCCCStateData value)? $default, {
    TResult Function(CommercioMintBurnCCCStateInitial value)? initial,
    TResult Function(CommercioMintBurnCCCStateLoading value)? loading,
    TResult Function(CommercioMintBurnCCCStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioMintBurnCCCStateInitial
    implements CommercioMintBurnCCCState {
  const factory CommercioMintBurnCCCStateInitial() =
      _$CommercioMintBurnCCCStateInitial;
}

/// @nodoc
abstract class $CommercioMintBurnCCCStateLoadingCopyWith<$Res> {
  factory $CommercioMintBurnCCCStateLoadingCopyWith(
          CommercioMintBurnCCCStateLoading value,
          $Res Function(CommercioMintBurnCCCStateLoading) then) =
      _$CommercioMintBurnCCCStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioMintBurnCCCStateLoadingCopyWithImpl<$Res>
    extends _$CommercioMintBurnCCCStateCopyWithImpl<$Res>
    implements $CommercioMintBurnCCCStateLoadingCopyWith<$Res> {
  _$CommercioMintBurnCCCStateLoadingCopyWithImpl(
      CommercioMintBurnCCCStateLoading _value,
      $Res Function(CommercioMintBurnCCCStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioMintBurnCCCStateLoading));

  @override
  CommercioMintBurnCCCStateLoading get _value =>
      super._value as CommercioMintBurnCCCStateLoading;
}

/// @nodoc

class _$CommercioMintBurnCCCStateLoading
    with DiagnosticableTreeMixin
    implements CommercioMintBurnCCCStateLoading {
  const _$CommercioMintBurnCCCStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintBurnCCCState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioMintBurnCCCState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintBurnCCCStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintBurnCCCStateData value) $default, {
    required TResult Function(CommercioMintBurnCCCStateInitial value) initial,
    required TResult Function(CommercioMintBurnCCCStateLoading value) loading,
    required TResult Function(CommercioMintBurnCCCStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintBurnCCCStateData value)? $default, {
    TResult Function(CommercioMintBurnCCCStateInitial value)? initial,
    TResult Function(CommercioMintBurnCCCStateLoading value)? loading,
    TResult Function(CommercioMintBurnCCCStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioMintBurnCCCStateLoading
    implements CommercioMintBurnCCCState {
  const factory CommercioMintBurnCCCStateLoading() =
      _$CommercioMintBurnCCCStateLoading;
}

/// @nodoc
abstract class $CommercioMintBurnCCCStateErrorCopyWith<$Res> {
  factory $CommercioMintBurnCCCStateErrorCopyWith(
          CommercioMintBurnCCCStateError value,
          $Res Function(CommercioMintBurnCCCStateError) then) =
      _$CommercioMintBurnCCCStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioMintBurnCCCStateErrorCopyWithImpl<$Res>
    extends _$CommercioMintBurnCCCStateCopyWithImpl<$Res>
    implements $CommercioMintBurnCCCStateErrorCopyWith<$Res> {
  _$CommercioMintBurnCCCStateErrorCopyWithImpl(
      CommercioMintBurnCCCStateError _value,
      $Res Function(CommercioMintBurnCCCStateError) _then)
      : super(_value, (v) => _then(v as CommercioMintBurnCCCStateError));

  @override
  CommercioMintBurnCCCStateError get _value =>
      super._value as CommercioMintBurnCCCStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioMintBurnCCCStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioMintBurnCCCStateError
    with DiagnosticableTreeMixin
    implements CommercioMintBurnCCCStateError {
  const _$CommercioMintBurnCCCStateError([this.error]);

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintBurnCCCState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommercioMintBurnCCCState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintBurnCCCStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioMintBurnCCCStateErrorCopyWith<CommercioMintBurnCCCStateError>
      get copyWith => _$CommercioMintBurnCCCStateErrorCopyWithImpl<
          CommercioMintBurnCCCStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionResult result) $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionResult result)? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintBurnCCCStateData value) $default, {
    required TResult Function(CommercioMintBurnCCCStateInitial value) initial,
    required TResult Function(CommercioMintBurnCCCStateLoading value) loading,
    required TResult Function(CommercioMintBurnCCCStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintBurnCCCStateData value)? $default, {
    TResult Function(CommercioMintBurnCCCStateInitial value)? initial,
    TResult Function(CommercioMintBurnCCCStateLoading value)? loading,
    TResult Function(CommercioMintBurnCCCStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioMintBurnCCCStateError
    implements CommercioMintBurnCCCState {
  const factory CommercioMintBurnCCCStateError([String? error]) =
      _$CommercioMintBurnCCCStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioMintBurnCCCStateErrorCopyWith<CommercioMintBurnCCCStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommercioMintGetExchangeTradePositionsStateTearOff {
  const _$CommercioMintGetExchangeTradePositionsStateTearOff();

  CommercioMintGetExchangeTradePositionsStateData call(
      {required List<ExchangeTradePosition> exchangeTradePositions}) {
    return CommercioMintGetExchangeTradePositionsStateData(
      exchangeTradePositions: exchangeTradePositions,
    );
  }

  CommercioMintGetExchangeTradePositionsStateInitial initial() {
    return const CommercioMintGetExchangeTradePositionsStateInitial();
  }

  CommercioMintGetExchangeTradePositionsStateLoading loading() {
    return const CommercioMintGetExchangeTradePositionsStateLoading();
  }

  CommercioMintGetExchangeTradePositionsStateError error([String? error]) {
    return CommercioMintGetExchangeTradePositionsStateError(
      error,
    );
  }
}

/// @nodoc
const $CommercioMintGetExchangeTradePositionsState =
    _$CommercioMintGetExchangeTradePositionsStateTearOff();

/// @nodoc
mixin _$CommercioMintGetExchangeTradePositionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ExchangeTradePosition> exchangeTradePositions)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ExchangeTradePosition> exchangeTradePositions)?
        $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintGetExchangeTradePositionsStateData value)
        $default, {
    required TResult Function(
            CommercioMintGetExchangeTradePositionsStateInitial value)
        initial,
    required TResult Function(
            CommercioMintGetExchangeTradePositionsStateLoading value)
        loading,
    required TResult Function(
            CommercioMintGetExchangeTradePositionsStateError value)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintGetExchangeTradePositionsStateData value)?
        $default, {
    TResult Function(CommercioMintGetExchangeTradePositionsStateInitial value)?
        initial,
    TResult Function(CommercioMintGetExchangeTradePositionsStateLoading value)?
        loading,
    TResult Function(CommercioMintGetExchangeTradePositionsStateError value)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioMintGetExchangeTradePositionsStateCopyWith<$Res> {
  factory $CommercioMintGetExchangeTradePositionsStateCopyWith(
          CommercioMintGetExchangeTradePositionsState value,
          $Res Function(CommercioMintGetExchangeTradePositionsState) then) =
      _$CommercioMintGetExchangeTradePositionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioMintGetExchangeTradePositionsStateCopyWithImpl<$Res>
    implements $CommercioMintGetExchangeTradePositionsStateCopyWith<$Res> {
  _$CommercioMintGetExchangeTradePositionsStateCopyWithImpl(
      this._value, this._then);

  final CommercioMintGetExchangeTradePositionsState _value;
  // ignore: unused_field
  final $Res Function(CommercioMintGetExchangeTradePositionsState) _then;
}

/// @nodoc
abstract class $CommercioMintGetExchangeTradePositionsStateDataCopyWith<$Res> {
  factory $CommercioMintGetExchangeTradePositionsStateDataCopyWith(
          CommercioMintGetExchangeTradePositionsStateData value,
          $Res Function(CommercioMintGetExchangeTradePositionsStateData) then) =
      _$CommercioMintGetExchangeTradePositionsStateDataCopyWithImpl<$Res>;
  $Res call({List<ExchangeTradePosition> exchangeTradePositions});
}

/// @nodoc
class _$CommercioMintGetExchangeTradePositionsStateDataCopyWithImpl<$Res>
    extends _$CommercioMintGetExchangeTradePositionsStateCopyWithImpl<$Res>
    implements $CommercioMintGetExchangeTradePositionsStateDataCopyWith<$Res> {
  _$CommercioMintGetExchangeTradePositionsStateDataCopyWithImpl(
      CommercioMintGetExchangeTradePositionsStateData _value,
      $Res Function(CommercioMintGetExchangeTradePositionsStateData) _then)
      : super(_value,
            (v) => _then(v as CommercioMintGetExchangeTradePositionsStateData));

  @override
  CommercioMintGetExchangeTradePositionsStateData get _value =>
      super._value as CommercioMintGetExchangeTradePositionsStateData;

  @override
  $Res call({
    Object? exchangeTradePositions = freezed,
  }) {
    return _then(CommercioMintGetExchangeTradePositionsStateData(
      exchangeTradePositions: exchangeTradePositions == freezed
          ? _value.exchangeTradePositions
          : exchangeTradePositions // ignore: cast_nullable_to_non_nullable
              as List<ExchangeTradePosition>,
    ));
  }
}

/// @nodoc

class _$CommercioMintGetExchangeTradePositionsStateData
    with DiagnosticableTreeMixin
    implements CommercioMintGetExchangeTradePositionsStateData {
  const _$CommercioMintGetExchangeTradePositionsStateData(
      {required this.exchangeTradePositions});

  @override
  final List<ExchangeTradePosition> exchangeTradePositions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintGetExchangeTradePositionsState(exchangeTradePositions: $exchangeTradePositions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioMintGetExchangeTradePositionsState'))
      ..add(DiagnosticsProperty(
          'exchangeTradePositions', exchangeTradePositions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintGetExchangeTradePositionsStateData &&
            (identical(other.exchangeTradePositions, exchangeTradePositions) ||
                const DeepCollectionEquality().equals(
                    other.exchangeTradePositions, exchangeTradePositions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exchangeTradePositions);

  @JsonKey(ignore: true)
  @override
  $CommercioMintGetExchangeTradePositionsStateDataCopyWith<
          CommercioMintGetExchangeTradePositionsStateData>
      get copyWith =>
          _$CommercioMintGetExchangeTradePositionsStateDataCopyWithImpl<
                  CommercioMintGetExchangeTradePositionsStateData>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ExchangeTradePosition> exchangeTradePositions)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(exchangeTradePositions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ExchangeTradePosition> exchangeTradePositions)?
        $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(exchangeTradePositions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintGetExchangeTradePositionsStateData value)
        $default, {
    required TResult Function(
            CommercioMintGetExchangeTradePositionsStateInitial value)
        initial,
    required TResult Function(
            CommercioMintGetExchangeTradePositionsStateLoading value)
        loading,
    required TResult Function(
            CommercioMintGetExchangeTradePositionsStateError value)
        error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintGetExchangeTradePositionsStateData value)?
        $default, {
    TResult Function(CommercioMintGetExchangeTradePositionsStateInitial value)?
        initial,
    TResult Function(CommercioMintGetExchangeTradePositionsStateLoading value)?
        loading,
    TResult Function(CommercioMintGetExchangeTradePositionsStateError value)?
        error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioMintGetExchangeTradePositionsStateData
    implements CommercioMintGetExchangeTradePositionsState {
  const factory CommercioMintGetExchangeTradePositionsStateData(
          {required List<ExchangeTradePosition> exchangeTradePositions}) =
      _$CommercioMintGetExchangeTradePositionsStateData;

  List<ExchangeTradePosition> get exchangeTradePositions =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioMintGetExchangeTradePositionsStateDataCopyWith<
          CommercioMintGetExchangeTradePositionsStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercioMintGetExchangeTradePositionsStateInitialCopyWith<
    $Res> {
  factory $CommercioMintGetExchangeTradePositionsStateInitialCopyWith(
          CommercioMintGetExchangeTradePositionsStateInitial value,
          $Res Function(CommercioMintGetExchangeTradePositionsStateInitial)
              then) =
      _$CommercioMintGetExchangeTradePositionsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioMintGetExchangeTradePositionsStateInitialCopyWithImpl<$Res>
    extends _$CommercioMintGetExchangeTradePositionsStateCopyWithImpl<$Res>
    implements
        $CommercioMintGetExchangeTradePositionsStateInitialCopyWith<$Res> {
  _$CommercioMintGetExchangeTradePositionsStateInitialCopyWithImpl(
      CommercioMintGetExchangeTradePositionsStateInitial _value,
      $Res Function(CommercioMintGetExchangeTradePositionsStateInitial) _then)
      : super(
            _value,
            (v) =>
                _then(v as CommercioMintGetExchangeTradePositionsStateInitial));

  @override
  CommercioMintGetExchangeTradePositionsStateInitial get _value =>
      super._value as CommercioMintGetExchangeTradePositionsStateInitial;
}

/// @nodoc

class _$CommercioMintGetExchangeTradePositionsStateInitial
    with DiagnosticableTreeMixin
    implements CommercioMintGetExchangeTradePositionsStateInitial {
  const _$CommercioMintGetExchangeTradePositionsStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintGetExchangeTradePositionsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioMintGetExchangeTradePositionsState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintGetExchangeTradePositionsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ExchangeTradePosition> exchangeTradePositions)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ExchangeTradePosition> exchangeTradePositions)?
        $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintGetExchangeTradePositionsStateData value)
        $default, {
    required TResult Function(
            CommercioMintGetExchangeTradePositionsStateInitial value)
        initial,
    required TResult Function(
            CommercioMintGetExchangeTradePositionsStateLoading value)
        loading,
    required TResult Function(
            CommercioMintGetExchangeTradePositionsStateError value)
        error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintGetExchangeTradePositionsStateData value)?
        $default, {
    TResult Function(CommercioMintGetExchangeTradePositionsStateInitial value)?
        initial,
    TResult Function(CommercioMintGetExchangeTradePositionsStateLoading value)?
        loading,
    TResult Function(CommercioMintGetExchangeTradePositionsStateError value)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioMintGetExchangeTradePositionsStateInitial
    implements CommercioMintGetExchangeTradePositionsState {
  const factory CommercioMintGetExchangeTradePositionsStateInitial() =
      _$CommercioMintGetExchangeTradePositionsStateInitial;
}

/// @nodoc
abstract class $CommercioMintGetExchangeTradePositionsStateLoadingCopyWith<
    $Res> {
  factory $CommercioMintGetExchangeTradePositionsStateLoadingCopyWith(
          CommercioMintGetExchangeTradePositionsStateLoading value,
          $Res Function(CommercioMintGetExchangeTradePositionsStateLoading)
              then) =
      _$CommercioMintGetExchangeTradePositionsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommercioMintGetExchangeTradePositionsStateLoadingCopyWithImpl<$Res>
    extends _$CommercioMintGetExchangeTradePositionsStateCopyWithImpl<$Res>
    implements
        $CommercioMintGetExchangeTradePositionsStateLoadingCopyWith<$Res> {
  _$CommercioMintGetExchangeTradePositionsStateLoadingCopyWithImpl(
      CommercioMintGetExchangeTradePositionsStateLoading _value,
      $Res Function(CommercioMintGetExchangeTradePositionsStateLoading) _then)
      : super(
            _value,
            (v) =>
                _then(v as CommercioMintGetExchangeTradePositionsStateLoading));

  @override
  CommercioMintGetExchangeTradePositionsStateLoading get _value =>
      super._value as CommercioMintGetExchangeTradePositionsStateLoading;
}

/// @nodoc

class _$CommercioMintGetExchangeTradePositionsStateLoading
    with DiagnosticableTreeMixin
    implements CommercioMintGetExchangeTradePositionsStateLoading {
  const _$CommercioMintGetExchangeTradePositionsStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintGetExchangeTradePositionsState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioMintGetExchangeTradePositionsState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintGetExchangeTradePositionsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ExchangeTradePosition> exchangeTradePositions)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ExchangeTradePosition> exchangeTradePositions)?
        $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintGetExchangeTradePositionsStateData value)
        $default, {
    required TResult Function(
            CommercioMintGetExchangeTradePositionsStateInitial value)
        initial,
    required TResult Function(
            CommercioMintGetExchangeTradePositionsStateLoading value)
        loading,
    required TResult Function(
            CommercioMintGetExchangeTradePositionsStateError value)
        error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintGetExchangeTradePositionsStateData value)?
        $default, {
    TResult Function(CommercioMintGetExchangeTradePositionsStateInitial value)?
        initial,
    TResult Function(CommercioMintGetExchangeTradePositionsStateLoading value)?
        loading,
    TResult Function(CommercioMintGetExchangeTradePositionsStateError value)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioMintGetExchangeTradePositionsStateLoading
    implements CommercioMintGetExchangeTradePositionsState {
  const factory CommercioMintGetExchangeTradePositionsStateLoading() =
      _$CommercioMintGetExchangeTradePositionsStateLoading;
}

/// @nodoc
abstract class $CommercioMintGetExchangeTradePositionsStateErrorCopyWith<$Res> {
  factory $CommercioMintGetExchangeTradePositionsStateErrorCopyWith(
          CommercioMintGetExchangeTradePositionsStateError value,
          $Res Function(CommercioMintGetExchangeTradePositionsStateError)
              then) =
      _$CommercioMintGetExchangeTradePositionsStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$CommercioMintGetExchangeTradePositionsStateErrorCopyWithImpl<$Res>
    extends _$CommercioMintGetExchangeTradePositionsStateCopyWithImpl<$Res>
    implements $CommercioMintGetExchangeTradePositionsStateErrorCopyWith<$Res> {
  _$CommercioMintGetExchangeTradePositionsStateErrorCopyWithImpl(
      CommercioMintGetExchangeTradePositionsStateError _value,
      $Res Function(CommercioMintGetExchangeTradePositionsStateError) _then)
      : super(
            _value,
            (v) =>
                _then(v as CommercioMintGetExchangeTradePositionsStateError));

  @override
  CommercioMintGetExchangeTradePositionsStateError get _value =>
      super._value as CommercioMintGetExchangeTradePositionsStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CommercioMintGetExchangeTradePositionsStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommercioMintGetExchangeTradePositionsStateError
    with DiagnosticableTreeMixin
    implements CommercioMintGetExchangeTradePositionsStateError {
  const _$CommercioMintGetExchangeTradePositionsStateError([this.error]);

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommercioMintGetExchangeTradePositionsState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CommercioMintGetExchangeTradePositionsState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioMintGetExchangeTradePositionsStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CommercioMintGetExchangeTradePositionsStateErrorCopyWith<
          CommercioMintGetExchangeTradePositionsStateError>
      get copyWith =>
          _$CommercioMintGetExchangeTradePositionsStateErrorCopyWithImpl<
                  CommercioMintGetExchangeTradePositionsStateError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ExchangeTradePosition> exchangeTradePositions)
        $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ExchangeTradePosition> exchangeTradePositions)?
        $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommercioMintGetExchangeTradePositionsStateData value)
        $default, {
    required TResult Function(
            CommercioMintGetExchangeTradePositionsStateInitial value)
        initial,
    required TResult Function(
            CommercioMintGetExchangeTradePositionsStateLoading value)
        loading,
    required TResult Function(
            CommercioMintGetExchangeTradePositionsStateError value)
        error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommercioMintGetExchangeTradePositionsStateData value)?
        $default, {
    TResult Function(CommercioMintGetExchangeTradePositionsStateInitial value)?
        initial,
    TResult Function(CommercioMintGetExchangeTradePositionsStateLoading value)?
        loading,
    TResult Function(CommercioMintGetExchangeTradePositionsStateError value)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioMintGetExchangeTradePositionsStateError
    implements CommercioMintGetExchangeTradePositionsState {
  const factory CommercioMintGetExchangeTradePositionsStateError(
      [String? error]) = _$CommercioMintGetExchangeTradePositionsStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommercioMintGetExchangeTradePositionsStateErrorCopyWith<
          CommercioMintGetExchangeTradePositionsStateError>
      get copyWith => throw _privateConstructorUsedError;
}
