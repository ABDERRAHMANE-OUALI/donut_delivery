// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donuts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DonutsState {
  List<StoreItemModel> get donuts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DonutsStateCopyWith<DonutsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonutsStateCopyWith<$Res> {
  factory $DonutsStateCopyWith(
          DonutsState value, $Res Function(DonutsState) then) =
      _$DonutsStateCopyWithImpl<$Res, DonutsState>;
  @useResult
  $Res call({List<StoreItemModel> donuts});
}

/// @nodoc
class _$DonutsStateCopyWithImpl<$Res, $Val extends DonutsState>
    implements $DonutsStateCopyWith<$Res> {
  _$DonutsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? donuts = null,
  }) {
    return _then(_value.copyWith(
      donuts: null == donuts
          ? _value.donuts
          : donuts // ignore: cast_nullable_to_non_nullable
              as List<StoreItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DonutsStateCopyWith<$Res>
    implements $DonutsStateCopyWith<$Res> {
  factory _$$_DonutsStateCopyWith(
          _$_DonutsState value, $Res Function(_$_DonutsState) then) =
      __$$_DonutsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StoreItemModel> donuts});
}

/// @nodoc
class __$$_DonutsStateCopyWithImpl<$Res>
    extends _$DonutsStateCopyWithImpl<$Res, _$_DonutsState>
    implements _$$_DonutsStateCopyWith<$Res> {
  __$$_DonutsStateCopyWithImpl(
      _$_DonutsState _value, $Res Function(_$_DonutsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? donuts = null,
  }) {
    return _then(_$_DonutsState(
      donuts: null == donuts
          ? _value._donuts
          : donuts // ignore: cast_nullable_to_non_nullable
              as List<StoreItemModel>,
    ));
  }
}

/// @nodoc

class _$_DonutsState implements _DonutsState {
  const _$_DonutsState({required final List<StoreItemModel> donuts})
      : _donuts = donuts;

  final List<StoreItemModel> _donuts;
  @override
  List<StoreItemModel> get donuts {
    if (_donuts is EqualUnmodifiableListView) return _donuts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donuts);
  }

  @override
  String toString() {
    return 'DonutsState(donuts: $donuts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DonutsState &&
            const DeepCollectionEquality().equals(other._donuts, _donuts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_donuts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DonutsStateCopyWith<_$_DonutsState> get copyWith =>
      __$$_DonutsStateCopyWithImpl<_$_DonutsState>(this, _$identity);
}

abstract class _DonutsState implements DonutsState {
  const factory _DonutsState({required final List<StoreItemModel> donuts}) =
      _$_DonutsState;

  @override
  List<StoreItemModel> get donuts;
  @override
  @JsonKey(ignore: true)
  _$$_DonutsStateCopyWith<_$_DonutsState> get copyWith =>
      throw _privateConstructorUsedError;
}
