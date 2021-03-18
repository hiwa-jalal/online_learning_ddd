// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'submit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SubmitStateTearOff {
  const _$SubmitStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Failure failure() {
    return const _Failure();
  }

// ignore: unused_element
  _AllSubmittedUsersLoaded allSubmittedUsersLoaded(
      {@required List<String> submittedUsers}) {
    return _AllSubmittedUsersLoaded(
      submittedUsers: submittedUsers,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SubmitState = _$SubmitStateTearOff();

/// @nodoc
mixin _$SubmitState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult failure(),
    @required TResult allSubmittedUsersLoaded(List<String> submittedUsers),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult failure(),
    TResult allSubmittedUsersLoaded(List<String> submittedUsers),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult failure(_Failure value),
    @required TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult failure(_Failure value),
    TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SubmitStateCopyWith<$Res> {
  factory $SubmitStateCopyWith(
          SubmitState value, $Res Function(SubmitState) then) =
      _$SubmitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitStateCopyWithImpl<$Res> implements $SubmitStateCopyWith<$Res> {
  _$SubmitStateCopyWithImpl(this._value, this._then);

  final SubmitState _value;
  // ignore: unused_field
  final $Res Function(SubmitState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SubmitStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SubmitState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult failure(),
    @required TResult allSubmittedUsersLoaded(List<String> submittedUsers),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(allSubmittedUsersLoaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult failure(),
    TResult allSubmittedUsersLoaded(List<String> submittedUsers),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult failure(_Failure value),
    @required TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(allSubmittedUsersLoaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult failure(_Failure value),
    TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SubmitState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$SubmitStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'SubmitState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult failure(),
    @required TResult allSubmittedUsersLoaded(List<String> submittedUsers),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(allSubmittedUsersLoaded != null);
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult failure(),
    TResult allSubmittedUsersLoaded(List<String> submittedUsers),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult failure(_Failure value),
    @required TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(allSubmittedUsersLoaded != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult failure(_Failure value),
    TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SubmitState {
  const factory _Failure() = _$_Failure;
}

/// @nodoc
abstract class _$AllSubmittedUsersLoadedCopyWith<$Res> {
  factory _$AllSubmittedUsersLoadedCopyWith(_AllSubmittedUsersLoaded value,
          $Res Function(_AllSubmittedUsersLoaded) then) =
      __$AllSubmittedUsersLoadedCopyWithImpl<$Res>;
  $Res call({List<String> submittedUsers});
}

/// @nodoc
class __$AllSubmittedUsersLoadedCopyWithImpl<$Res>
    extends _$SubmitStateCopyWithImpl<$Res>
    implements _$AllSubmittedUsersLoadedCopyWith<$Res> {
  __$AllSubmittedUsersLoadedCopyWithImpl(_AllSubmittedUsersLoaded _value,
      $Res Function(_AllSubmittedUsersLoaded) _then)
      : super(_value, (v) => _then(v as _AllSubmittedUsersLoaded));

  @override
  _AllSubmittedUsersLoaded get _value =>
      super._value as _AllSubmittedUsersLoaded;

  @override
  $Res call({
    Object submittedUsers = freezed,
  }) {
    return _then(_AllSubmittedUsersLoaded(
      submittedUsers: submittedUsers == freezed
          ? _value.submittedUsers
          : submittedUsers as List<String>,
    ));
  }
}

/// @nodoc
class _$_AllSubmittedUsersLoaded implements _AllSubmittedUsersLoaded {
  const _$_AllSubmittedUsersLoaded({@required this.submittedUsers})
      : assert(submittedUsers != null);

  @override
  final List<String> submittedUsers;

  @override
  String toString() {
    return 'SubmitState.allSubmittedUsersLoaded(submittedUsers: $submittedUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AllSubmittedUsersLoaded &&
            (identical(other.submittedUsers, submittedUsers) ||
                const DeepCollectionEquality()
                    .equals(other.submittedUsers, submittedUsers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(submittedUsers);

  @JsonKey(ignore: true)
  @override
  _$AllSubmittedUsersLoadedCopyWith<_AllSubmittedUsersLoaded> get copyWith =>
      __$AllSubmittedUsersLoadedCopyWithImpl<_AllSubmittedUsersLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult failure(),
    @required TResult allSubmittedUsersLoaded(List<String> submittedUsers),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(allSubmittedUsersLoaded != null);
    return allSubmittedUsersLoaded(submittedUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult failure(),
    TResult allSubmittedUsersLoaded(List<String> submittedUsers),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (allSubmittedUsersLoaded != null) {
      return allSubmittedUsersLoaded(submittedUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult failure(_Failure value),
    @required TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(allSubmittedUsersLoaded != null);
    return allSubmittedUsersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult failure(_Failure value),
    TResult allSubmittedUsersLoaded(_AllSubmittedUsersLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (allSubmittedUsersLoaded != null) {
      return allSubmittedUsersLoaded(this);
    }
    return orElse();
  }
}

abstract class _AllSubmittedUsersLoaded implements SubmitState {
  const factory _AllSubmittedUsersLoaded(
      {@required List<String> submittedUsers}) = _$_AllSubmittedUsersLoaded;

  List<String> get submittedUsers;
  @JsonKey(ignore: true)
  _$AllSubmittedUsersLoadedCopyWith<_AllSubmittedUsersLoaded> get copyWith;
}
