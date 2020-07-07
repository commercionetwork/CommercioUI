// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'commercio_kyc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CommercioKycRequestedFaucetInviteStateTearOff {
  const _$CommercioKycRequestedFaucetInviteStateTearOff();

  CommercioKycRequestedFaucetInviteStateData call(
      {@required FaucetInviteResponse response}) {
    return CommercioKycRequestedFaucetInviteStateData(
      response: response,
    );
  }

  CommercioKycRequestedFaucetInviteStateInitial initial() {
    return const CommercioKycRequestedFaucetInviteStateInitial();
  }

  CommercioKycRequestedFaucetInviteStateLoading loading() {
    return const CommercioKycRequestedFaucetInviteStateLoading();
  }

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

  CommercioKycBuyMembershipStateData call(
      {@required TransactionResult result}) {
    return CommercioKycBuyMembershipStateData(
      result: result,
    );
  }

  CommercioKycBuyMembershipStateInitial initial() {
    return const CommercioKycBuyMembershipStateInitial();
  }

  CommercioKycBuyMembershipStateLoading loading() {
    return const CommercioKycBuyMembershipStateLoading();
  }

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

class _$CommercioKycInviteMemberStateTearOff {
  const _$CommercioKycInviteMemberStateTearOff();

  CommercioKycInviteMemberStateData call({@required TransactionResult result}) {
    return CommercioKycInviteMemberStateData(
      result: result,
    );
  }

  CommercioKycInviteMemberStateInitial initial() {
    return const CommercioKycInviteMemberStateInitial();
  }

  CommercioKycInviteMemberStateLoading loading() {
    return const CommercioKycInviteMemberStateLoading();
  }

  CommercioKycInviteMemberStateError error([String error]) {
    return CommercioKycInviteMemberStateError(
      error,
    );
  }
}

// ignore: unused_element
const $CommercioKycInviteMemberState = _$CommercioKycInviteMemberStateTearOff();

mixin _$CommercioKycInviteMemberState {
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
    Result $default(CommercioKycInviteMemberStateData value), {
    @required Result initial(CommercioKycInviteMemberStateInitial value),
    @required Result loading(CommercioKycInviteMemberStateLoading value),
    @required Result error(CommercioKycInviteMemberStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CommercioKycInviteMemberStateData value), {
    Result initial(CommercioKycInviteMemberStateInitial value),
    Result loading(CommercioKycInviteMemberStateLoading value),
    Result error(CommercioKycInviteMemberStateError value),
    @required Result orElse(),
  });
}

abstract class $CommercioKycInviteMemberStateCopyWith<$Res> {
  factory $CommercioKycInviteMemberStateCopyWith(
          CommercioKycInviteMemberState value,
          $Res Function(CommercioKycInviteMemberState) then) =
      _$CommercioKycInviteMemberStateCopyWithImpl<$Res>;
}

class _$CommercioKycInviteMemberStateCopyWithImpl<$Res>
    implements $CommercioKycInviteMemberStateCopyWith<$Res> {
  _$CommercioKycInviteMemberStateCopyWithImpl(this._value, this._then);

  final CommercioKycInviteMemberState _value;
  // ignore: unused_field
  final $Res Function(CommercioKycInviteMemberState) _then;
}

abstract class $CommercioKycInviteMemberStateDataCopyWith<$Res> {
  factory $CommercioKycInviteMemberStateDataCopyWith(
          CommercioKycInviteMemberStateData value,
          $Res Function(CommercioKycInviteMemberStateData) then) =
      _$CommercioKycInviteMemberStateDataCopyWithImpl<$Res>;
  $Res call({TransactionResult result});
}

class _$CommercioKycInviteMemberStateDataCopyWithImpl<$Res>
    extends _$CommercioKycInviteMemberStateCopyWithImpl<$Res>
    implements $CommercioKycInviteMemberStateDataCopyWith<$Res> {
  _$CommercioKycInviteMemberStateDataCopyWithImpl(
      CommercioKycInviteMemberStateData _value,
      $Res Function(CommercioKycInviteMemberStateData) _then)
      : super(_value, (v) => _then(v as CommercioKycInviteMemberStateData));

  @override
  CommercioKycInviteMemberStateData get _value =>
      super._value as CommercioKycInviteMemberStateData;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(CommercioKycInviteMemberStateData(
      result: result == freezed ? _value.result : result as TransactionResult,
    ));
  }
}

class _$CommercioKycInviteMemberStateData
    implements CommercioKycInviteMemberStateData {
  const _$CommercioKycInviteMemberStateData({@required this.result})
      : assert(result != null);

  @override
  final TransactionResult result;

  @override
  String toString() {
    return 'CommercioKycInviteMemberState(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycInviteMemberStateData &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  $CommercioKycInviteMemberStateDataCopyWith<CommercioKycInviteMemberStateData>
      get copyWith => _$CommercioKycInviteMemberStateDataCopyWithImpl<
          CommercioKycInviteMemberStateData>(this, _$identity);

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
    Result $default(CommercioKycInviteMemberStateData value), {
    @required Result initial(CommercioKycInviteMemberStateInitial value),
    @required Result loading(CommercioKycInviteMemberStateLoading value),
    @required Result error(CommercioKycInviteMemberStateError value),
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
    Result $default(CommercioKycInviteMemberStateData value), {
    Result initial(CommercioKycInviteMemberStateInitial value),
    Result loading(CommercioKycInviteMemberStateLoading value),
    Result error(CommercioKycInviteMemberStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommercioKycInviteMemberStateData
    implements CommercioKycInviteMemberState {
  const factory CommercioKycInviteMemberStateData(
          {@required TransactionResult result}) =
      _$CommercioKycInviteMemberStateData;

  TransactionResult get result;
  $CommercioKycInviteMemberStateDataCopyWith<CommercioKycInviteMemberStateData>
      get copyWith;
}

abstract class $CommercioKycInviteMemberStateInitialCopyWith<$Res> {
  factory $CommercioKycInviteMemberStateInitialCopyWith(
          CommercioKycInviteMemberStateInitial value,
          $Res Function(CommercioKycInviteMemberStateInitial) then) =
      _$CommercioKycInviteMemberStateInitialCopyWithImpl<$Res>;
}

class _$CommercioKycInviteMemberStateInitialCopyWithImpl<$Res>
    extends _$CommercioKycInviteMemberStateCopyWithImpl<$Res>
    implements $CommercioKycInviteMemberStateInitialCopyWith<$Res> {
  _$CommercioKycInviteMemberStateInitialCopyWithImpl(
      CommercioKycInviteMemberStateInitial _value,
      $Res Function(CommercioKycInviteMemberStateInitial) _then)
      : super(_value, (v) => _then(v as CommercioKycInviteMemberStateInitial));

  @override
  CommercioKycInviteMemberStateInitial get _value =>
      super._value as CommercioKycInviteMemberStateInitial;
}

class _$CommercioKycInviteMemberStateInitial
    implements CommercioKycInviteMemberStateInitial {
  const _$CommercioKycInviteMemberStateInitial();

  @override
  String toString() {
    return 'CommercioKycInviteMemberState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycInviteMemberStateInitial);
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
    Result $default(CommercioKycInviteMemberStateData value), {
    @required Result initial(CommercioKycInviteMemberStateInitial value),
    @required Result loading(CommercioKycInviteMemberStateLoading value),
    @required Result error(CommercioKycInviteMemberStateError value),
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
    Result $default(CommercioKycInviteMemberStateData value), {
    Result initial(CommercioKycInviteMemberStateInitial value),
    Result loading(CommercioKycInviteMemberStateLoading value),
    Result error(CommercioKycInviteMemberStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommercioKycInviteMemberStateInitial
    implements CommercioKycInviteMemberState {
  const factory CommercioKycInviteMemberStateInitial() =
      _$CommercioKycInviteMemberStateInitial;
}

abstract class $CommercioKycInviteMemberStateLoadingCopyWith<$Res> {
  factory $CommercioKycInviteMemberStateLoadingCopyWith(
          CommercioKycInviteMemberStateLoading value,
          $Res Function(CommercioKycInviteMemberStateLoading) then) =
      _$CommercioKycInviteMemberStateLoadingCopyWithImpl<$Res>;
}

class _$CommercioKycInviteMemberStateLoadingCopyWithImpl<$Res>
    extends _$CommercioKycInviteMemberStateCopyWithImpl<$Res>
    implements $CommercioKycInviteMemberStateLoadingCopyWith<$Res> {
  _$CommercioKycInviteMemberStateLoadingCopyWithImpl(
      CommercioKycInviteMemberStateLoading _value,
      $Res Function(CommercioKycInviteMemberStateLoading) _then)
      : super(_value, (v) => _then(v as CommercioKycInviteMemberStateLoading));

  @override
  CommercioKycInviteMemberStateLoading get _value =>
      super._value as CommercioKycInviteMemberStateLoading;
}

class _$CommercioKycInviteMemberStateLoading
    implements CommercioKycInviteMemberStateLoading {
  const _$CommercioKycInviteMemberStateLoading();

  @override
  String toString() {
    return 'CommercioKycInviteMemberState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycInviteMemberStateLoading);
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
    Result $default(CommercioKycInviteMemberStateData value), {
    @required Result initial(CommercioKycInviteMemberStateInitial value),
    @required Result loading(CommercioKycInviteMemberStateLoading value),
    @required Result error(CommercioKycInviteMemberStateError value),
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
    Result $default(CommercioKycInviteMemberStateData value), {
    Result initial(CommercioKycInviteMemberStateInitial value),
    Result loading(CommercioKycInviteMemberStateLoading value),
    Result error(CommercioKycInviteMemberStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommercioKycInviteMemberStateLoading
    implements CommercioKycInviteMemberState {
  const factory CommercioKycInviteMemberStateLoading() =
      _$CommercioKycInviteMemberStateLoading;
}

abstract class $CommercioKycInviteMemberStateErrorCopyWith<$Res> {
  factory $CommercioKycInviteMemberStateErrorCopyWith(
          CommercioKycInviteMemberStateError value,
          $Res Function(CommercioKycInviteMemberStateError) then) =
      _$CommercioKycInviteMemberStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$CommercioKycInviteMemberStateErrorCopyWithImpl<$Res>
    extends _$CommercioKycInviteMemberStateCopyWithImpl<$Res>
    implements $CommercioKycInviteMemberStateErrorCopyWith<$Res> {
  _$CommercioKycInviteMemberStateErrorCopyWithImpl(
      CommercioKycInviteMemberStateError _value,
      $Res Function(CommercioKycInviteMemberStateError) _then)
      : super(_value, (v) => _then(v as CommercioKycInviteMemberStateError));

  @override
  CommercioKycInviteMemberStateError get _value =>
      super._value as CommercioKycInviteMemberStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CommercioKycInviteMemberStateError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$CommercioKycInviteMemberStateError
    implements CommercioKycInviteMemberStateError {
  const _$CommercioKycInviteMemberStateError([this.error]);

  @override
  final String error;

  @override
  String toString() {
    return 'CommercioKycInviteMemberState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommercioKycInviteMemberStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CommercioKycInviteMemberStateErrorCopyWith<
          CommercioKycInviteMemberStateError>
      get copyWith => _$CommercioKycInviteMemberStateErrorCopyWithImpl<
          CommercioKycInviteMemberStateError>(this, _$identity);

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
    Result $default(CommercioKycInviteMemberStateData value), {
    @required Result initial(CommercioKycInviteMemberStateInitial value),
    @required Result loading(CommercioKycInviteMemberStateLoading value),
    @required Result error(CommercioKycInviteMemberStateError value),
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
    Result $default(CommercioKycInviteMemberStateData value), {
    Result initial(CommercioKycInviteMemberStateInitial value),
    Result loading(CommercioKycInviteMemberStateLoading value),
    Result error(CommercioKycInviteMemberStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CommercioKycInviteMemberStateError
    implements CommercioKycInviteMemberState {
  const factory CommercioKycInviteMemberStateError([String error]) =
      _$CommercioKycInviteMemberStateError;

  String get error;
  $CommercioKycInviteMemberStateErrorCopyWith<
      CommercioKycInviteMemberStateError> get copyWith;
}
