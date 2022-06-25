// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'peep.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Peep _$PeepFromJson(Map<String, dynamic> json) {
  return _Peep.fromJson(json);
}

/// @nodoc
mixin _$Peep {
  PeepAtom get head => throw _privateConstructorUsedError;
  PeepAtom get face => throw _privateConstructorUsedError;
  PeepAtom get facialHair => throw _privateConstructorUsedError;
  PeepAtom get accessory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeepCopyWith<Peep> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeepCopyWith<$Res> {
  factory $PeepCopyWith(Peep value, $Res Function(Peep) then) =
      _$PeepCopyWithImpl<$Res>;
  $Res call(
      {PeepAtom head, PeepAtom face, PeepAtom facialHair, PeepAtom accessory});

  $PeepAtomCopyWith<$Res> get head;
  $PeepAtomCopyWith<$Res> get face;
  $PeepAtomCopyWith<$Res> get facialHair;
  $PeepAtomCopyWith<$Res> get accessory;
}

/// @nodoc
class _$PeepCopyWithImpl<$Res> implements $PeepCopyWith<$Res> {
  _$PeepCopyWithImpl(this._value, this._then);

  final Peep _value;
  // ignore: unused_field
  final $Res Function(Peep) _then;

  @override
  $Res call({
    Object? head = freezed,
    Object? face = freezed,
    Object? facialHair = freezed,
    Object? accessory = freezed,
  }) {
    return _then(_value.copyWith(
      head: head == freezed
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as PeepAtom,
      face: face == freezed
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as PeepAtom,
      facialHair: facialHair == freezed
          ? _value.facialHair
          : facialHair // ignore: cast_nullable_to_non_nullable
              as PeepAtom,
      accessory: accessory == freezed
          ? _value.accessory
          : accessory // ignore: cast_nullable_to_non_nullable
              as PeepAtom,
    ));
  }

  @override
  $PeepAtomCopyWith<$Res> get head {
    return $PeepAtomCopyWith<$Res>(_value.head, (value) {
      return _then(_value.copyWith(head: value));
    });
  }

  @override
  $PeepAtomCopyWith<$Res> get face {
    return $PeepAtomCopyWith<$Res>(_value.face, (value) {
      return _then(_value.copyWith(face: value));
    });
  }

  @override
  $PeepAtomCopyWith<$Res> get facialHair {
    return $PeepAtomCopyWith<$Res>(_value.facialHair, (value) {
      return _then(_value.copyWith(facialHair: value));
    });
  }

  @override
  $PeepAtomCopyWith<$Res> get accessory {
    return $PeepAtomCopyWith<$Res>(_value.accessory, (value) {
      return _then(_value.copyWith(accessory: value));
    });
  }
}

/// @nodoc
abstract class _$$_PeepCopyWith<$Res> implements $PeepCopyWith<$Res> {
  factory _$$_PeepCopyWith(_$_Peep value, $Res Function(_$_Peep) then) =
      __$$_PeepCopyWithImpl<$Res>;
  @override
  $Res call(
      {PeepAtom head, PeepAtom face, PeepAtom facialHair, PeepAtom accessory});

  @override
  $PeepAtomCopyWith<$Res> get head;
  @override
  $PeepAtomCopyWith<$Res> get face;
  @override
  $PeepAtomCopyWith<$Res> get facialHair;
  @override
  $PeepAtomCopyWith<$Res> get accessory;
}

/// @nodoc
class __$$_PeepCopyWithImpl<$Res> extends _$PeepCopyWithImpl<$Res>
    implements _$$_PeepCopyWith<$Res> {
  __$$_PeepCopyWithImpl(_$_Peep _value, $Res Function(_$_Peep) _then)
      : super(_value, (v) => _then(v as _$_Peep));

  @override
  _$_Peep get _value => super._value as _$_Peep;

  @override
  $Res call({
    Object? head = freezed,
    Object? face = freezed,
    Object? facialHair = freezed,
    Object? accessory = freezed,
  }) {
    return _then(_$_Peep(
      head: head == freezed
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as PeepAtom,
      face: face == freezed
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as PeepAtom,
      facialHair: facialHair == freezed
          ? _value.facialHair
          : facialHair // ignore: cast_nullable_to_non_nullable
              as PeepAtom,
      accessory: accessory == freezed
          ? _value.accessory
          : accessory // ignore: cast_nullable_to_non_nullable
              as PeepAtom,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Peep implements _Peep {
  _$_Peep(
      {required this.head,
      required this.face,
      required this.facialHair,
      required this.accessory});

  factory _$_Peep.fromJson(Map<String, dynamic> json) => _$$_PeepFromJson(json);

  @override
  final PeepAtom head;
  @override
  final PeepAtom face;
  @override
  final PeepAtom facialHair;
  @override
  final PeepAtom accessory;

  @override
  String toString() {
    return 'Peep(head: $head, face: $face, facialHair: $facialHair, accessory: $accessory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Peep &&
            const DeepCollectionEquality().equals(other.head, head) &&
            const DeepCollectionEquality().equals(other.face, face) &&
            const DeepCollectionEquality()
                .equals(other.facialHair, facialHair) &&
            const DeepCollectionEquality().equals(other.accessory, accessory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(head),
      const DeepCollectionEquality().hash(face),
      const DeepCollectionEquality().hash(facialHair),
      const DeepCollectionEquality().hash(accessory));

  @JsonKey(ignore: true)
  @override
  _$$_PeepCopyWith<_$_Peep> get copyWith =>
      __$$_PeepCopyWithImpl<_$_Peep>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeepToJson(this);
  }
}

abstract class _Peep implements Peep {
  factory _Peep(
      {required final PeepAtom head,
      required final PeepAtom face,
      required final PeepAtom facialHair,
      required final PeepAtom accessory}) = _$_Peep;

  factory _Peep.fromJson(Map<String, dynamic> json) = _$_Peep.fromJson;

  @override
  PeepAtom get head => throw _privateConstructorUsedError;
  @override
  PeepAtom get face => throw _privateConstructorUsedError;
  @override
  PeepAtom get facialHair => throw _privateConstructorUsedError;
  @override
  PeepAtom get accessory => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PeepCopyWith<_$_Peep> get copyWith => throw _privateConstructorUsedError;
}
