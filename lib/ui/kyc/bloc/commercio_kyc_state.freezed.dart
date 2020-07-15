// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'commercio_kyc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CommercioKycRequestedFaucetInviteStateTearOff {
  const _$CommercioKycRequestedFaucetInviteStateTearOff();

// ignore: unused_element
  CommercioKycRequestedFaucetInviteStateData call(
      {@required FaucetInviteResponse response}) {
    return CommercioKycRequestedFaucetInviteStateData(
      response: response,
    );
  }

// ignore: unused_element
  CommercioKycRequestedFaucetInviteStateInitial initial() {
    return const CommercioKycRequestedFaucetInviteStateInitial();
  }

// ignore: unused_element
  CommercioKycRequestedFaucetInviteStateLoading loading() {
    return const CommercioKycRequestedFaucetInviteStateLoading();
  }

// ignore: unused_element
  CommercioKycRequestedFaucetInviteStateError error([String error]) {
    return CommercioKycRequestedFaucetInviteStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioKycRequestedFaucetInviteState =
    _$CommercioKycRequestedFaucetInviteStateTearOff();

mixin _$CommercioKycRequestedFaucetInviteState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(FaucetInviteResponse response), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(FaucetInviteResponse response), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycRequestedFaucetInviteStateData value), {
    @required
        Result initial(CommercioKycRequestedFaucetInviteStateInitial value),
    @required
        Result loading(CommercioKycRequestedFaucetInviteStateLoading value),
    @required Result error(CommercioKycRequestedFaucetInviteStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycRequestedFaucetInviteStateData value), {
    Result initial(CommercioKycRequestedFaucetInviteStateInitial value),
    Result loading(CommercioKycRequestedFaucetInviteStateLoading value),
    Result error(CommercioKycRequestedFaucetInviteStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioKycRequestedFaucetInviteStateCopyWith<$Res> {
  factory $CommercioKycRequestedFaucetInviteStateCopyWith(
          CommercioKycRequestedFaucetInviteState value,
          $Res Function(CommercioKycRequestedFaucetInviteState) then) =
      _$CommercioKycRequestedFaucetInviteStateCopyWithImpl<$Res>;
}

class _$CommercioKycRequestedFaucetInviteStateCopyWithImpl<$Res>
    implements $CommercioKycRequestedFaucetInviteStateCopyWith<$Res> {
  _$CommercioKycRequestedFaucetInviteStateCopyWithImpl(this._value, this._then);

  final CommercioKycRequestedFaucetInviteState _value;
  // ignore: unused_field
  final $Res Function(CommercioKycRequestedFaucetInviteState) _then;
}

abstract class $CommercioKycRequestedFaucetInviteStateDataCopyWith<$Res> {
  factory $CommercioKycRequestedFaucetInviteStateDataCopyWith(
          CommercioKycRequestedFaucetInviteStateData value,
          $Res Function(CommercioKycRequestedFaucetInviteStateData) then) =
      _$CommercioKycRequestedFaucetInviteStateDataCopyWithImpl<$Res>;
  $Res call({FaucetInviteResponse response});

  $FaucetInviteResponseCopyWith<$Res> get response;
}

class _$CommercioKycRequestedFaucetInviteStateDataCopyWithImpl<$Res>
    extends _$CommercioKycRequestedFaucetInviteStateCopyWithImpl<$Res>
    implements $CommercioKycRequestedFaucetInviteStateDataCopyWith<$Res> {
  _$CommercioKycRequestedFaucetInviteStateDataCopyWithImpl(
      CommercioKycRequestedFaucetInviteStateData _value,
      $Res Function(CommercioKycRequestedFaucetInviteStateData) _then)
      : super(_value,
            (v) => _then(v as CommercioKycRequestedFaucetInviteStateData));

  @override
  CommercioKycRequestedFaucetInviteStateData get _value =>
      super._value as CommercioKycRequestedFaucetInviteStateData;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(CommercioKycRequestedFaucetInviteStateData(
      response: response == freezed
          ? _value.response
          : response as FaucetInviteResponse,
    ));
  }

  @override
  $FaucetInviteResponseCopyWith<$Res> get response {
    if (_value.response == null) {
      return null;
    }
    return $FaucetInviteResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

class _$CommercioKycRequestedFaucetInviteStateData
    implements CommercioKycRequestedFaucetInviteStateData {
  const _$CommercioKycRequestedFaucetInviteStateData({@required this.response})
      : assert(response != null);

  @override
  final FaucetInviteResponse response;

  @override
  String toString() {
    return 'CommercioKycRequestedFaucetInviteState(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycRequestedFaucetInviteStateData &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @override
  $CommercioKycRequestedFaucetInviteStateDataCopyWith<
          CommercioKycRequestedFaucetInviteStateData>
      get copyWith => _$CommercioKycRequestedFaucetInviteStateDataCopyWithImpl<
          CommercioKycRequestedFaucetInviteStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(FaucetInviteResponse response), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(FaucetInviteResponse response), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycRequestedFaucetInviteStateData value), {
    @required
        Result initial(CommercioKycRequestedFaucetInviteStateInitial value),
    @required
        Result loading(CommercioKycRequestedFaucetInviteStateLoading value),
    @required Result error(CommercioKycRequestedFaucetInviteStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycRequestedFaucetInviteStateData value), {
    Result initial(CommercioKycRequestedFaucetInviteStateInitial value),
    Result loading(CommercioKycRequestedFaucetInviteStateLoading value),
    Result error(CommercioKycRequestedFaucetInviteStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioKycRequestedFaucetInviteStateData
    implements CommercioKycRequestedFaucetInviteState {
  const factory CommercioKycRequestedFaucetInviteStateData(
          {@required FaucetInviteResponse response}) =
      _$CommercioKycRequestedFaucetInviteStateData;

  FaucetInviteResponse get response;
  $CommercioKycRequestedFaucetInviteStateDataCopyWith<
      CommercioKycRequestedFaucetInviteStateData> get copyWith;
}

abstract class $CommercioKycRequestedFaucetInviteStateInitialCopyWith<$Res> {
  factory $CommercioKycRequestedFaucetInviteStateInitialCopyWith(
          CommercioKycRequestedFaucetInviteStateInitial value,
          $Res Function(CommercioKycRequestedFaucetInviteStateInitial) then) =
      _$CommercioKycRequestedFaucetInviteStateInitialCopyWithImpl<$Res>;
}

class _$CommercioKycRequestedFaucetInviteStateInitialCopyWithImpl<$Res>
    extends _$CommercioKycRequestedFaucetInviteStateCopyWithImpl<$Res>
    implements $CommercioKycRequestedFaucetInviteStateInitialCopyWith<$Res> {
  _$CommercioKycRequestedFaucetInviteStateInitialCopyWithImpl(
      CommercioKycRequestedFaucetInviteStateInitial _value,
      $Res Function(CommercioKycRequestedFaucetInviteStateInitial) _then)
      : super(_value,
            (v) => _then(v as CommercioKycRequestedFaucetInviteStateInitial));

  @override
  CommercioKycRequestedFaucetInviteStateInitial get _value =>
      super._value as CommercioKycRequestedFaucetInviteStateInitial;
}

class _$CommercioKycRequestedFaucetInviteStateInitial
    implements CommercioKycRequestedFaucetInviteStateInitial {
  const _$CommercioKycRequestedFaucetInviteStateInitial();

  @override
  String toString() {
    return 'CommercioKycRequestedFaucetInviteState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycRequestedFaucetInviteStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(FaucetInviteResponse response), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(FaucetInviteResponse response), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycRequestedFaucetInviteStateData value), {
    @required
        Result initial(CommercioKycRequestedFaucetInviteStateInitial value),
    @required
        Result loading(CommercioKycRequestedFaucetInviteStateLoading value),
    @required Result error(CommercioKycRequestedFaucetInviteStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycRequestedFaucetInviteStateData value), {
    Result initial(CommercioKycRequestedFaucetInviteStateInitial value),
    Result loading(CommercioKycRequestedFaucetInviteStateLoading value),
    Result error(CommercioKycRequestedFaucetInviteStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioKycRequestedFaucetInviteStateInitial
    implements CommercioKycRequestedFaucetInviteState {
  const factory CommercioKycRequestedFaucetInviteStateInitial() =
      _$CommercioKycRequestedFaucetInviteStateInitial;
}

abstract class $CommercioKycRequestedFaucetInviteStateLoadingCopyWith<$Res> {
  factory $CommercioKycRequestedFaucetInviteStateLoadingCopyWith(
          CommercioKycRequestedFaucetInviteStateLoading value,
          $Res Function(CommercioKycRequestedFaucetInviteStateLoading) then) =
      _$CommercioKycRequestedFaucetInviteStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioKycRequestedFaucetInviteStateLoadingCopyWithImpl<$Res>
    extends _$CommercioKycRequestedFaucetInviteStateCopyWithImpl<$Res>
    implements $CommercioKycRequestedFaucetInviteStateLoadingCopyWith<$Res> {
  _$CommercioKycRequestedFaucetInviteStateLoadingCopyWithImpl(
      CommercioKycRequestedFaucetInviteStateLoading _value,
      $Res Function(CommercioKycRequestedFaucetInviteStateLoading) _then)
      : super(_value,
            (v) => _then(v as CommercioKycRequestedFaucetInviteStateLoading));

  @override
  CommercioKycRequestedFaucetInviteStateLoading get _value =>
      super._value as CommercioKycRequestedFaucetInviteStateLoading;
}

class _$CommercioKycRequestedFaucetInviteStateLoading
    implements CommercioKycRequestedFaucetInviteStateLoading {
  const _$CommercioKycRequestedFaucetInviteStateLoading();

  @override
  String toString() {
    return 'CommercioKycRequestedFaucetInviteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycRequestedFaucetInviteStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(FaucetInviteResponse response), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(FaucetInviteResponse response), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycRequestedFaucetInviteStateData value), {
    @required
        Result initial(CommercioKycRequestedFaucetInviteStateInitial value),
    @required
        Result loading(CommercioKycRequestedFaucetInviteStateLoading value),
    @required Result error(CommercioKycRequestedFaucetInviteStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycRequestedFaucetInviteStateData value), {
    Result initial(CommercioKycRequestedFaucetInviteStateInitial value),
    Result loading(CommercioKycRequestedFaucetInviteStateLoading value),
    Result error(CommercioKycRequestedFaucetInviteStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioKycRequestedFaucetInviteStateLoading
    implements CommercioKycRequestedFaucetInviteState {
  const factory CommercioKycRequestedFaucetInviteStateLoading() =
      _$CommercioKycRequestedFaucetInviteStateLoading;
}

abstract class $CommercioKycRequestedFaucetInviteStateErrorCopyWith<$Res> {
  factory $CommercioKycRequestedFaucetInviteStateErrorCopyWith(
          CommercioKycRequestedFaucetInviteStateError value,
          $Res Function(CommercioKycRequestedFaucetInviteStateError) then) =
      _$CommercioKycRequestedFaucetInviteStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioKycRequestedFaucetInviteStateErrorCopyWithImpl<$Res>
    extends _$CommercioKycRequestedFaucetInviteStateCopyWithImpl<$Res>
    implements $CommercioKycRequestedFaucetInviteStateErrorCopyWith<$Res> {
  _$CommercioKycRequestedFaucetInviteStateErrorCopyWithImpl(
      CommercioKycRequestedFaucetInviteStateError _value,
      $Res Function(CommercioKycRequestedFaucetInviteStateError) _then)
      : super(_value,
            (v) => _then(v as CommercioKycRequestedFaucetInviteStateError));

  @override
  CommercioKycRequestedFaucetInviteStateError get _value =>
      super._value as CommercioKycRequestedFaucetInviteStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioKycRequestedFaucetInviteStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioKycRequestedFaucetInviteStateError
    implements CommercioKycRequestedFaucetInviteStateError {
  const _$CommercioKycRequestedFaucetInviteStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioKycRequestedFaucetInviteState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycRequestedFaucetInviteStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioKycRequestedFaucetInviteStateErrorCopyWith<
          CommercioKycRequestedFaucetInviteStateError>
      get copyWith => _$CommercioKycRequestedFaucetInviteStateErrorCopyWithImpl<
          CommercioKycRequestedFaucetInviteStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(FaucetInviteResponse response), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(FaucetInviteResponse response), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycRequestedFaucetInviteStateData value), {
    @required
        Result initial(CommercioKycRequestedFaucetInviteStateInitial value),
    @required
        Result loading(CommercioKycRequestedFaucetInviteStateLoading value),
    @required Result error(CommercioKycRequestedFaucetInviteStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycRequestedFaucetInviteStateData value), {
    Result initial(CommercioKycRequestedFaucetInviteStateInitial value),
    Result loading(CommercioKycRequestedFaucetInviteStateLoading value),
    Result error(CommercioKycRequestedFaucetInviteStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioKycRequestedFaucetInviteStateError
    implements CommercioKycRequestedFaucetInviteState {
  const factory CommercioKycRequestedFaucetInviteStateError([String error]) =
      _$CommercioKycRequestedFaucetInviteStateError;

  String get error;
  $CommercioKycRequestedFaucetInviteStateErrorCopyWith<
      CommercioKycRequestedFaucetInviteStateError> get copyWith;
}

class _$CommercioKycBuyMembershipStateTearOff {
  const _$CommercioKycBuyMembershipStateTearOff();

// ignore: unused_element
  CommercioKycBuyMembershipStateData call(
      {@required TransactionResult result}) {
    return CommercioKycBuyMembershipStateData(
      result: result,
    );
  }

// ignore: unused_element
  CommercioKycBuyMembershipStateInitial initial() {
    return const CommercioKycBuyMembershipStateInitial();
  }

// ignore: unused_element
  CommercioKycBuyMembershipStateLoading loading() {
    return const CommercioKycBuyMembershipStateLoading();
  }

// ignore: unused_element
  CommercioKycBuyMembershipStateError error([String error]) {
    return CommercioKycBuyMembershipStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioKycBuyMembershipState =
    _$CommercioKycBuyMembershipStateTearOff();

mixin _$CommercioKycBuyMembershipState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycBuyMembershipStateData value), {
    @required Result initial(CommercioKycBuyMembershipStateInitial value),
    @required Result loading(CommercioKycBuyMembershipStateLoading value),
    @required Result error(CommercioKycBuyMembershipStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycBuyMembershipStateData value), {
    Result initial(CommercioKycBuyMembershipStateInitial value),
    Result loading(CommercioKycBuyMembershipStateLoading value),
    Result error(CommercioKycBuyMembershipStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioKycBuyMembershipStateCopyWith<$Res> {
  factory $CommercioKycBuyMembershipStateCopyWith(
          CommercioKycBuyMembershipState value,
          $Res Function(CommercioKycBuyMembershipState) then) =
      _$CommercioKycBuyMembershipStateCopyWithImpl<$Res>;
}

class _$CommercioKycBuyMembershipStateCopyWithImpl<$Res>
    implements $CommercioKycBuyMembershipStateCopyWith<$Res> {
  _$CommercioKycBuyMembershipStateCopyWithImpl(this._value, this._then);

  final CommercioKycBuyMembershipState _value;
  // ignore: unused_field
  final $Res Function(CommercioKycBuyMembershipState) _then;
}

abstract class $CommercioKycBuyMembershipStateDataCopyWith<$Res> {
  factory $CommercioKycBuyMembershipStateDataCopyWith(
          CommercioKycBuyMembershipStateData value,
          $Res Function(CommercioKycBuyMembershipStateData) then) =
      _$CommercioKycBuyMembershipStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

class _$CommercioKycBuyMembershipStateDataCopyWithImpl<$Res>
    extends _$CommercioKycBuyMembershipStateCopyWithImpl<$Res>
    implements $CommercioKycBuyMembershipStateDataCopyWith<$Res> {
  _$CommercioKycBuyMembershipStateDataCopyWithImpl(
      CommercioKycBuyMembershipStateData _value,
      $Res Function(CommercioKycBuyMembershipStateData) _then)
      : super(_value, (v) => _then(v as CommercioKycBuyMembershipStateData));

  @override
  CommercioKycBuyMembershipStateData get _value =>
      super._value as CommercioKycBuyMembershipStateData;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(CommercioKycBuyMembershipStateData(
      result: result == freezed ? _value.result : result as TransactionResult,
    ));
  }
}

class _$CommercioKycBuyMembershipStateData
    implements CommercioKycBuyMembershipStateData {
  const _$CommercioKycBuyMembershipStateData({@required this.result})
      : assert(result != null);

  @override
  final TransactionResult result;

  @override
  String toString() {
    return 'CommercioKycBuyMembershipState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycBuyMembershipStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  $CommercioKycBuyMembershipStateDataCopyWith<
          CommercioKycBuyMembershipStateData>
      get copyWith => _$CommercioKycBuyMembershipStateDataCopyWithImpl<
          CommercioKycBuyMembershipStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(result);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycBuyMembershipStateData value), {
    @required Result initial(CommercioKycBuyMembershipStateInitial value),
    @required Result loading(CommercioKycBuyMembershipStateLoading value),
    @required Result error(CommercioKycBuyMembershipStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycBuyMembershipStateData value), {
    Result initial(CommercioKycBuyMembershipStateInitial value),
    Result loading(CommercioKycBuyMembershipStateLoading value),
    Result error(CommercioKycBuyMembershipStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioKycBuyMembershipStateData
    implements CommercioKycBuyMembershipState {
  const factory CommercioKycBuyMembershipStateData(
          {@required TransactionResult result}) =
      _$CommercioKycBuyMembershipStateData;

  TransactionResult get result;
  $CommercioKycBuyMembershipStateDataCopyWith<
      CommercioKycBuyMembershipStateData> get copyWith;
}

abstract class $CommercioKycBuyMembershipStateInitialCopyWith<$Res> {
  factory $CommercioKycBuyMembershipStateInitialCopyWith(
          CommercioKycBuyMembershipStateInitial value,
          $Res Function(CommercioKycBuyMembershipStateInitial) then) =
      _$CommercioKycBuyMembershipStateInitialCopyWithImpl<$Res>;
}

class _$CommercioKycBuyMembershipStateInitialCopyWithImpl<$Res>
    extends _$CommercioKycBuyMembershipStateCopyWithImpl<$Res>
    implements $CommercioKycBuyMembershipStateInitialCopyWith<$Res> {
  _$CommercioKycBuyMembershipStateInitialCopyWithImpl(
      CommercioKycBuyMembershipStateInitial _value,
      $Res Function(CommercioKycBuyMembershipStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioKycBuyMembershipStateInitial));

  @override
  CommercioKycBuyMembershipStateInitial get _value =>
      super._value as CommercioKycBuyMembershipStateInitial;
}

class _$CommercioKycBuyMembershipStateInitial
    implements CommercioKycBuyMembershipStateInitial {
  const _$CommercioKycBuyMembershipStateInitial();

  @override
  String toString() {
    return 'CommercioKycBuyMembershipState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycBuyMembershipStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycBuyMembershipStateData value), {
    @required Result initial(CommercioKycBuyMembershipStateInitial value),
    @required Result loading(CommercioKycBuyMembershipStateLoading value),
    @required Result error(CommercioKycBuyMembershipStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycBuyMembershipStateData value), {
    Result initial(CommercioKycBuyMembershipStateInitial value),
    Result loading(CommercioKycBuyMembershipStateLoading value),
    Result error(CommercioKycBuyMembershipStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioKycBuyMembershipStateInitial
    implements CommercioKycBuyMembershipState {
  const factory CommercioKycBuyMembershipStateInitial() =
      _$CommercioKycBuyMembershipStateInitial;
}

abstract class $CommercioKycBuyMembershipStateLoadingCopyWith<$Res> {
  factory $CommercioKycBuyMembershipStateLoadingCopyWith(
          CommercioKycBuyMembershipStateLoading value,
          $Res Function(CommercioKycBuyMembershipStateLoading) then) =
      _$CommercioKycBuyMembershipStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioKycBuyMembershipStateLoadingCopyWithImpl<$Res>
    extends _$CommercioKycBuyMembershipStateCopyWithImpl<$Res>
    implements $CommercioKycBuyMembershipStateLoadingCopyWith<$Res> {
  _$CommercioKycBuyMembershipStateLoadingCopyWithImpl(
      CommercioKycBuyMembershipStateLoading _value,
      $Res Function(CommercioKycBuyMembershipStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioKycBuyMembershipStateLoading));

  @override
  CommercioKycBuyMembershipStateLoading get _value =>
      super._value as CommercioKycBuyMembershipStateLoading;
}

class _$CommercioKycBuyMembershipStateLoading
    implements CommercioKycBuyMembershipStateLoading {
  const _$CommercioKycBuyMembershipStateLoading();

  @override
  String toString() {
    return 'CommercioKycBuyMembershipState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycBuyMembershipStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycBuyMembershipStateData value), {
    @required Result initial(CommercioKycBuyMembershipStateInitial value),
    @required Result loading(CommercioKycBuyMembershipStateLoading value),
    @required Result error(CommercioKycBuyMembershipStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycBuyMembershipStateData value), {
    Result initial(CommercioKycBuyMembershipStateInitial value),
    Result loading(CommercioKycBuyMembershipStateLoading value),
    Result error(CommercioKycBuyMembershipStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioKycBuyMembershipStateLoading
    implements CommercioKycBuyMembershipState {
  const factory CommercioKycBuyMembershipStateLoading() =
      _$CommercioKycBuyMembershipStateLoading;
}

abstract class $CommercioKycBuyMembershipStateErrorCopyWith<$Res> {
  factory $CommercioKycBuyMembershipStateErrorCopyWith(
          CommercioKycBuyMembershipStateError value,
          $Res Function(CommercioKycBuyMembershipStateError) then) =
      _$CommercioKycBuyMembershipStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioKycBuyMembershipStateErrorCopyWithImpl<$Res>
    extends _$CommercioKycBuyMembershipStateCopyWithImpl<$Res>
    implements $CommercioKycBuyMembershipStateErrorCopyWith<$Res> {
  _$CommercioKycBuyMembershipStateErrorCopyWithImpl(
      CommercioKycBuyMembershipStateError _value,
      $Res Function(CommercioKycBuyMembershipStateError) _then)
      : super(_value, (v) => _then(v as CommercioKycBuyMembershipStateError));

  @override
  CommercioKycBuyMembershipStateError get _value =>
      super._value as CommercioKycBuyMembershipStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioKycBuyMembershipStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioKycBuyMembershipStateError
    implements CommercioKycBuyMembershipStateError {
  const _$CommercioKycBuyMembershipStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioKycBuyMembershipState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycBuyMembershipStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioKycBuyMembershipStateErrorCopyWith<
          CommercioKycBuyMembershipStateError>
      get copyWith => _$CommercioKycBuyMembershipStateErrorCopyWithImpl<
          CommercioKycBuyMembershipStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycBuyMembershipStateData value), {
    @required Result initial(CommercioKycBuyMembershipStateInitial value),
    @required Result loading(CommercioKycBuyMembershipStateLoading value),
    @required Result error(CommercioKycBuyMembershipStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycBuyMembershipStateData value), {
    Result initial(CommercioKycBuyMembershipStateInitial value),
    Result loading(CommercioKycBuyMembershipStateLoading value),
    Result error(CommercioKycBuyMembershipStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioKycBuyMembershipStateError
    implements CommercioKycBuyMembershipState {
  const factory CommercioKycBuyMembershipStateError([String error]) =
      _$CommercioKycBuyMembershipStateError;

  String get error;
  $CommercioKycBuyMembershipStateErrorCopyWith<
      CommercioKycBuyMembershipStateError> get copyWith;
}

class _$CommercioKycDeriveInviteMemberStateTearOff {
  const _$CommercioKycDeriveInviteMemberStateTearOff();

// ignore: unused_element
  CommercioKycDeriveInviteMemberStateData call(
      {@required InviteUser inviteUser}) {
    return CommercioKycDeriveInviteMemberStateData(
      inviteUser: inviteUser,
    );
  }

// ignore: unused_element
  CommercioKycDeriveInviteMemberStateInitial initial() {
    return const CommercioKycDeriveInviteMemberStateInitial();
  }

// ignore: unused_element
  CommercioKycDeriveInviteMemberStateLoading loading() {
    return const CommercioKycDeriveInviteMemberStateLoading();
  }

// ignore: unused_element
  CommercioKycDeriveInviteMemberStateError error([String error]) {
    return CommercioKycDeriveInviteMemberStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioKycDeriveInviteMemberState =
    _$CommercioKycDeriveInviteMemberStateTearOff();

mixin _$CommercioKycDeriveInviteMemberState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(InviteUser inviteUser), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(InviteUser inviteUser), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycDeriveInviteMemberStateData value), {
    @required Result initial(CommercioKycDeriveInviteMemberStateInitial value),
    @required Result loading(CommercioKycDeriveInviteMemberStateLoading value),
    @required Result error(CommercioKycDeriveInviteMemberStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycDeriveInviteMemberStateData value), {
    Result initial(CommercioKycDeriveInviteMemberStateInitial value),
    Result loading(CommercioKycDeriveInviteMemberStateLoading value),
    Result error(CommercioKycDeriveInviteMemberStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioKycDeriveInviteMemberStateCopyWith<$Res> {
  factory $CommercioKycDeriveInviteMemberStateCopyWith(
          CommercioKycDeriveInviteMemberState value,
          $Res Function(CommercioKycDeriveInviteMemberState) then) =
      _$CommercioKycDeriveInviteMemberStateCopyWithImpl<$Res>;
}

class _$CommercioKycDeriveInviteMemberStateCopyWithImpl<$Res>
    implements $CommercioKycDeriveInviteMemberStateCopyWith<$Res> {
  _$CommercioKycDeriveInviteMemberStateCopyWithImpl(this._value, this._then);

  final CommercioKycDeriveInviteMemberState _value;
  // ignore: unused_field
  final $Res Function(CommercioKycDeriveInviteMemberState) _then;
}

abstract class $CommercioKycDeriveInviteMemberStateDataCopyWith<$Res> {
  factory $CommercioKycDeriveInviteMemberStateDataCopyWith(
          CommercioKycDeriveInviteMemberStateData value,
          $Res Function(CommercioKycDeriveInviteMemberStateData) then) =
      _$CommercioKycDeriveInviteMemberStateDataCopyWithImpl<$Res>;
  $Res call({InviteUser inviteUser});
}

class _$CommercioKycDeriveInviteMemberStateDataCopyWithImpl<$Res>
    extends _$CommercioKycDeriveInviteMemberStateCopyWithImpl<$Res>
    implements $CommercioKycDeriveInviteMemberStateDataCopyWith<$Res> {
  _$CommercioKycDeriveInviteMemberStateDataCopyWithImpl(
      CommercioKycDeriveInviteMemberStateData _value,
      $Res Function(CommercioKycDeriveInviteMemberStateData) _then)
      : super(
            _value, (v) => _then(v as CommercioKycDeriveInviteMemberStateData));

  @override
  CommercioKycDeriveInviteMemberStateData get _value =>
      super._value as CommercioKycDeriveInviteMemberStateData;

  @override
  $Res call({
    Object inviteUser = freezed,
  }) {
    return _then(CommercioKycDeriveInviteMemberStateData(
      inviteUser:
          inviteUser == freezed ? _value.inviteUser : inviteUser as InviteUser,
    ));
  }
}

class _$CommercioKycDeriveInviteMemberStateData
    implements CommercioKycDeriveInviteMemberStateData {
  const _$CommercioKycDeriveInviteMemberStateData({@required this.inviteUser})
      : assert(inviteUser != null);

  @override
  final InviteUser inviteUser;

  @override
  String toString() {
    return 'CommercioKycDeriveInviteMemberState(inviteUser: $inviteUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycDeriveInviteMemberStateData &&
            (identical(other.inviteUser, inviteUser) ||
                const DeepCollectionEquality()
                    .equals(other.inviteUser, inviteUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(inviteUser);

  @override
  $CommercioKycDeriveInviteMemberStateDataCopyWith<
          CommercioKycDeriveInviteMemberStateData>
      get copyWith => _$CommercioKycDeriveInviteMemberStateDataCopyWithImpl<
          CommercioKycDeriveInviteMemberStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(InviteUser inviteUser), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(inviteUser);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(InviteUser inviteUser), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(inviteUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycDeriveInviteMemberStateData value), {
    @required Result initial(CommercioKycDeriveInviteMemberStateInitial value),
    @required Result loading(CommercioKycDeriveInviteMemberStateLoading value),
    @required Result error(CommercioKycDeriveInviteMemberStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycDeriveInviteMemberStateData value), {
    Result initial(CommercioKycDeriveInviteMemberStateInitial value),
    Result loading(CommercioKycDeriveInviteMemberStateLoading value),
    Result error(CommercioKycDeriveInviteMemberStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioKycDeriveInviteMemberStateData
    implements CommercioKycDeriveInviteMemberState {
  const factory CommercioKycDeriveInviteMemberStateData(
          {@required InviteUser inviteUser}) =
      _$CommercioKycDeriveInviteMemberStateData;

  InviteUser get inviteUser;
  $CommercioKycDeriveInviteMemberStateDataCopyWith<
      CommercioKycDeriveInviteMemberStateData> get copyWith;
}

abstract class $CommercioKycDeriveInviteMemberStateInitialCopyWith<$Res> {
  factory $CommercioKycDeriveInviteMemberStateInitialCopyWith(
          CommercioKycDeriveInviteMemberStateInitial value,
          $Res Function(CommercioKycDeriveInviteMemberStateInitial) then) =
      _$CommercioKycDeriveInviteMemberStateInitialCopyWithImpl<$Res>;
}

class _$CommercioKycDeriveInviteMemberStateInitialCopyWithImpl<$Res>
    extends _$CommercioKycDeriveInviteMemberStateCopyWithImpl<$Res>
    implements $CommercioKycDeriveInviteMemberStateInitialCopyWith<$Res> {
  _$CommercioKycDeriveInviteMemberStateInitialCopyWithImpl(
      CommercioKycDeriveInviteMemberStateInitial _value,
      $Res Function(CommercioKycDeriveInviteMemberStateInitial) _then)
      : super(_value,
            (v) => _then(v as CommercioKycDeriveInviteMemberStateInitial));

  @override
  CommercioKycDeriveInviteMemberStateInitial get _value =>
      super._value as CommercioKycDeriveInviteMemberStateInitial;
}

class _$CommercioKycDeriveInviteMemberStateInitial
    implements CommercioKycDeriveInviteMemberStateInitial {
  const _$CommercioKycDeriveInviteMemberStateInitial();

  @override
  String toString() {
    return 'CommercioKycDeriveInviteMemberState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycDeriveInviteMemberStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(InviteUser inviteUser), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(InviteUser inviteUser), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycDeriveInviteMemberStateData value), {
    @required Result initial(CommercioKycDeriveInviteMemberStateInitial value),
    @required Result loading(CommercioKycDeriveInviteMemberStateLoading value),
    @required Result error(CommercioKycDeriveInviteMemberStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycDeriveInviteMemberStateData value), {
    Result initial(CommercioKycDeriveInviteMemberStateInitial value),
    Result loading(CommercioKycDeriveInviteMemberStateLoading value),
    Result error(CommercioKycDeriveInviteMemberStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioKycDeriveInviteMemberStateInitial
    implements CommercioKycDeriveInviteMemberState {
  const factory CommercioKycDeriveInviteMemberStateInitial() =
      _$CommercioKycDeriveInviteMemberStateInitial;
}

abstract class $CommercioKycDeriveInviteMemberStateLoadingCopyWith<$Res> {
  factory $CommercioKycDeriveInviteMemberStateLoadingCopyWith(
          CommercioKycDeriveInviteMemberStateLoading value,
          $Res Function(CommercioKycDeriveInviteMemberStateLoading) then) =
      _$CommercioKycDeriveInviteMemberStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioKycDeriveInviteMemberStateLoadingCopyWithImpl<$Res>
    extends _$CommercioKycDeriveInviteMemberStateCopyWithImpl<$Res>
    implements $CommercioKycDeriveInviteMemberStateLoadingCopyWith<$Res> {
  _$CommercioKycDeriveInviteMemberStateLoadingCopyWithImpl(
      CommercioKycDeriveInviteMemberStateLoading _value,
      $Res Function(CommercioKycDeriveInviteMemberStateLoading) _then)
      : super(_value,
            (v) => _then(v as CommercioKycDeriveInviteMemberStateLoading));

  @override
  CommercioKycDeriveInviteMemberStateLoading get _value =>
      super._value as CommercioKycDeriveInviteMemberStateLoading;
}

class _$CommercioKycDeriveInviteMemberStateLoading
    implements CommercioKycDeriveInviteMemberStateLoading {
  const _$CommercioKycDeriveInviteMemberStateLoading();

  @override
  String toString() {
    return 'CommercioKycDeriveInviteMemberState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycDeriveInviteMemberStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(InviteUser inviteUser), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(InviteUser inviteUser), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycDeriveInviteMemberStateData value), {
    @required Result initial(CommercioKycDeriveInviteMemberStateInitial value),
    @required Result loading(CommercioKycDeriveInviteMemberStateLoading value),
    @required Result error(CommercioKycDeriveInviteMemberStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycDeriveInviteMemberStateData value), {
    Result initial(CommercioKycDeriveInviteMemberStateInitial value),
    Result loading(CommercioKycDeriveInviteMemberStateLoading value),
    Result error(CommercioKycDeriveInviteMemberStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioKycDeriveInviteMemberStateLoading
    implements CommercioKycDeriveInviteMemberState {
  const factory CommercioKycDeriveInviteMemberStateLoading() =
      _$CommercioKycDeriveInviteMemberStateLoading;
}

abstract class $CommercioKycDeriveInviteMemberStateErrorCopyWith<$Res> {
  factory $CommercioKycDeriveInviteMemberStateErrorCopyWith(
          CommercioKycDeriveInviteMemberStateError value,
          $Res Function(CommercioKycDeriveInviteMemberStateError) then) =
      _$CommercioKycDeriveInviteMemberStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioKycDeriveInviteMemberStateErrorCopyWithImpl<$Res>
    extends _$CommercioKycDeriveInviteMemberStateCopyWithImpl<$Res>
    implements $CommercioKycDeriveInviteMemberStateErrorCopyWith<$Res> {
  _$CommercioKycDeriveInviteMemberStateErrorCopyWithImpl(
      CommercioKycDeriveInviteMemberStateError _value,
      $Res Function(CommercioKycDeriveInviteMemberStateError) _then)
      : super(_value,
            (v) => _then(v as CommercioKycDeriveInviteMemberStateError));

  @override
  CommercioKycDeriveInviteMemberStateError get _value =>
      super._value as CommercioKycDeriveInviteMemberStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioKycDeriveInviteMemberStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioKycDeriveInviteMemberStateError
    implements CommercioKycDeriveInviteMemberStateError {
  const _$CommercioKycDeriveInviteMemberStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioKycDeriveInviteMemberState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycDeriveInviteMemberStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioKycDeriveInviteMemberStateErrorCopyWith<
          CommercioKycDeriveInviteMemberStateError>
      get copyWith => _$CommercioKycDeriveInviteMemberStateErrorCopyWithImpl<
          CommercioKycDeriveInviteMemberStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(InviteUser inviteUser), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(InviteUser inviteUser), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycDeriveInviteMemberStateData value), {
    @required Result initial(CommercioKycDeriveInviteMemberStateInitial value),
    @required Result loading(CommercioKycDeriveInviteMemberStateLoading value),
    @required Result error(CommercioKycDeriveInviteMemberStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycDeriveInviteMemberStateData value), {
    Result initial(CommercioKycDeriveInviteMemberStateInitial value),
    Result loading(CommercioKycDeriveInviteMemberStateLoading value),
    Result error(CommercioKycDeriveInviteMemberStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioKycDeriveInviteMemberStateError
    implements CommercioKycDeriveInviteMemberState {
  const factory CommercioKycDeriveInviteMemberStateError([String error]) =
      _$CommercioKycDeriveInviteMemberStateError;

  String get error;
  $CommercioKycDeriveInviteMemberStateErrorCopyWith<
      CommercioKycDeriveInviteMemberStateError> get copyWith;
}

class _$CommercioKycInviteMembersStateTearOff {
  const _$CommercioKycInviteMembersStateTearOff();

// ignore: unused_element
  CommercioKycInviteMembersStateData call(
      {@required TransactionResult result}) {
    return CommercioKycInviteMembersStateData(
      result: result,
    );
  }

// ignore: unused_element
  CommercioKycInviteMembersStateInitial initial() {
    return const CommercioKycInviteMembersStateInitial();
  }

// ignore: unused_element
  CommercioKycInviteMembersStateLoading loading() {
    return const CommercioKycInviteMembersStateLoading();
  }

// ignore: unused_element
  CommercioKycInviteMembersStateError error([String error]) {
    return CommercioKycInviteMembersStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioKycInviteMembersState =
    _$CommercioKycInviteMembersStateTearOff();

mixin _$CommercioKycInviteMembersState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycInviteMembersStateData value), {
    @required Result initial(CommercioKycInviteMembersStateInitial value),
    @required Result loading(CommercioKycInviteMembersStateLoading value),
    @required Result error(CommercioKycInviteMembersStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycInviteMembersStateData value), {
    Result initial(CommercioKycInviteMembersStateInitial value),
    Result loading(CommercioKycInviteMembersStateLoading value),
    Result error(CommercioKycInviteMembersStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioKycInviteMembersStateCopyWith<$Res> {
  factory $CommercioKycInviteMembersStateCopyWith(
          CommercioKycInviteMembersState value,
          $Res Function(CommercioKycInviteMembersState) then) =
      _$CommercioKycInviteMembersStateCopyWithImpl<$Res>;
}

class _$CommercioKycInviteMembersStateCopyWithImpl<$Res>
    implements $CommercioKycInviteMembersStateCopyWith<$Res> {
  _$CommercioKycInviteMembersStateCopyWithImpl(this._value, this._then);

  final CommercioKycInviteMembersState _value;
  // ignore: unused_field
  final $Res Function(CommercioKycInviteMembersState) _then;
}

abstract class $CommercioKycInviteMembersStateDataCopyWith<$Res> {
  factory $CommercioKycInviteMembersStateDataCopyWith(
          CommercioKycInviteMembersStateData value,
          $Res Function(CommercioKycInviteMembersStateData) then) =
      _$CommercioKycInviteMembersStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

class _$CommercioKycInviteMembersStateDataCopyWithImpl<$Res>
    extends _$CommercioKycInviteMembersStateCopyWithImpl<$Res>
    implements $CommercioKycInviteMembersStateDataCopyWith<$Res> {
  _$CommercioKycInviteMembersStateDataCopyWithImpl(
      CommercioKycInviteMembersStateData _value,
      $Res Function(CommercioKycInviteMembersStateData) _then)
      : super(_value, (v) => _then(v as CommercioKycInviteMembersStateData));

  @override
  CommercioKycInviteMembersStateData get _value =>
      super._value as CommercioKycInviteMembersStateData;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(CommercioKycInviteMembersStateData(
      result: result == freezed ? _value.result : result as TransactionResult,
    ));
  }
}

class _$CommercioKycInviteMembersStateData
    implements CommercioKycInviteMembersStateData {
  const _$CommercioKycInviteMembersStateData({@required this.result})
      : assert(result != null);

  @override
  final TransactionResult result;

  @override
  String toString() {
    return 'CommercioKycInviteMembersState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycInviteMembersStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  $CommercioKycInviteMembersStateDataCopyWith<
          CommercioKycInviteMembersStateData>
      get copyWith => _$CommercioKycInviteMembersStateDataCopyWithImpl<
          CommercioKycInviteMembersStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(result);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycInviteMembersStateData value), {
    @required Result initial(CommercioKycInviteMembersStateInitial value),
    @required Result loading(CommercioKycInviteMembersStateLoading value),
    @required Result error(CommercioKycInviteMembersStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycInviteMembersStateData value), {
    Result initial(CommercioKycInviteMembersStateInitial value),
    Result loading(CommercioKycInviteMembersStateLoading value),
    Result error(CommercioKycInviteMembersStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioKycInviteMembersStateData
    implements CommercioKycInviteMembersState {
  const factory CommercioKycInviteMembersStateData(
          {@required TransactionResult result}) =
      _$CommercioKycInviteMembersStateData;

  TransactionResult get result;
  $CommercioKycInviteMembersStateDataCopyWith<
      CommercioKycInviteMembersStateData> get copyWith;
}

abstract class $CommercioKycInviteMembersStateInitialCopyWith<$Res> {
  factory $CommercioKycInviteMembersStateInitialCopyWith(
          CommercioKycInviteMembersStateInitial value,
          $Res Function(CommercioKycInviteMembersStateInitial) then) =
      _$CommercioKycInviteMembersStateInitialCopyWithImpl<$Res>;
}

class _$CommercioKycInviteMembersStateInitialCopyWithImpl<$Res>
    extends _$CommercioKycInviteMembersStateCopyWithImpl<$Res>
    implements $CommercioKycInviteMembersStateInitialCopyWith<$Res> {
  _$CommercioKycInviteMembersStateInitialCopyWithImpl(
      CommercioKycInviteMembersStateInitial _value,
      $Res Function(CommercioKycInviteMembersStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioKycInviteMembersStateInitial));

  @override
  CommercioKycInviteMembersStateInitial get _value =>
      super._value as CommercioKycInviteMembersStateInitial;
}

class _$CommercioKycInviteMembersStateInitial
    implements CommercioKycInviteMembersStateInitial {
  const _$CommercioKycInviteMembersStateInitial();

  @override
  String toString() {
    return 'CommercioKycInviteMembersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycInviteMembersStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycInviteMembersStateData value), {
    @required Result initial(CommercioKycInviteMembersStateInitial value),
    @required Result loading(CommercioKycInviteMembersStateLoading value),
    @required Result error(CommercioKycInviteMembersStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycInviteMembersStateData value), {
    Result initial(CommercioKycInviteMembersStateInitial value),
    Result loading(CommercioKycInviteMembersStateLoading value),
    Result error(CommercioKycInviteMembersStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioKycInviteMembersStateInitial
    implements CommercioKycInviteMembersState {
  const factory CommercioKycInviteMembersStateInitial() =
      _$CommercioKycInviteMembersStateInitial;
}

abstract class $CommercioKycInviteMembersStateLoadingCopyWith<$Res> {
  factory $CommercioKycInviteMembersStateLoadingCopyWith(
          CommercioKycInviteMembersStateLoading value,
          $Res Function(CommercioKycInviteMembersStateLoading) then) =
      _$CommercioKycInviteMembersStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioKycInviteMembersStateLoadingCopyWithImpl<$Res>
    extends _$CommercioKycInviteMembersStateCopyWithImpl<$Res>
    implements $CommercioKycInviteMembersStateLoadingCopyWith<$Res> {
  _$CommercioKycInviteMembersStateLoadingCopyWithImpl(
      CommercioKycInviteMembersStateLoading _value,
      $Res Function(CommercioKycInviteMembersStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioKycInviteMembersStateLoading));

  @override
  CommercioKycInviteMembersStateLoading get _value =>
      super._value as CommercioKycInviteMembersStateLoading;
}

class _$CommercioKycInviteMembersStateLoading
    implements CommercioKycInviteMembersStateLoading {
  const _$CommercioKycInviteMembersStateLoading();

  @override
  String toString() {
    return 'CommercioKycInviteMembersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycInviteMembersStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycInviteMembersStateData value), {
    @required Result initial(CommercioKycInviteMembersStateInitial value),
    @required Result loading(CommercioKycInviteMembersStateLoading value),
    @required Result error(CommercioKycInviteMembersStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycInviteMembersStateData value), {
    Result initial(CommercioKycInviteMembersStateInitial value),
    Result loading(CommercioKycInviteMembersStateLoading value),
    Result error(CommercioKycInviteMembersStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioKycInviteMembersStateLoading
    implements CommercioKycInviteMembersState {
  const factory CommercioKycInviteMembersStateLoading() =
      _$CommercioKycInviteMembersStateLoading;
}

abstract class $CommercioKycInviteMembersStateErrorCopyWith<$Res> {
  factory $CommercioKycInviteMembersStateErrorCopyWith(
          CommercioKycInviteMembersStateError value,
          $Res Function(CommercioKycInviteMembersStateError) then) =
      _$CommercioKycInviteMembersStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioKycInviteMembersStateErrorCopyWithImpl<$Res>
    extends _$CommercioKycInviteMembersStateCopyWithImpl<$Res>
    implements $CommercioKycInviteMembersStateErrorCopyWith<$Res> {
  _$CommercioKycInviteMembersStateErrorCopyWithImpl(
      CommercioKycInviteMembersStateError _value,
      $Res Function(CommercioKycInviteMembersStateError) _then)
      : super(_value, (v) => _then(v as CommercioKycInviteMembersStateError));

  @override
  CommercioKycInviteMembersStateError get _value =>
      super._value as CommercioKycInviteMembersStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioKycInviteMembersStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioKycInviteMembersStateError
    implements CommercioKycInviteMembersStateError {
  const _$CommercioKycInviteMembersStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioKycInviteMembersState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycInviteMembersStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioKycInviteMembersStateErrorCopyWith<
          CommercioKycInviteMembersStateError>
      get copyWith => _$CommercioKycInviteMembersStateErrorCopyWithImpl<
          CommercioKycInviteMembersStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(TransactionResult result), {
    @required Result initial(),
    @required Result loading(),
    @required Result error(String error),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(TransactionResult result), {
    Result initial(),
    Result loading(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CommercioKycInviteMembersStateData value), {
    @required Result initial(CommercioKycInviteMembersStateInitial value),
    @required Result loading(CommercioKycInviteMembersStateLoading value),
    @required Result error(CommercioKycInviteMembersStateError value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycInviteMembersStateData value), {
    Result initial(CommercioKycInviteMembersStateInitial value),
    Result loading(CommercioKycInviteMembersStateLoading value),
    Result error(CommercioKycInviteMembersStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioKycInviteMembersStateError
    implements CommercioKycInviteMembersState {
  const factory CommercioKycInviteMembersStateError([String error]) =
      _$CommercioKycInviteMembersStateError;

  String get error;
  $CommercioKycInviteMembersStateErrorCopyWith<
      CommercioKycInviteMembersStateError> get copyWith;
}
