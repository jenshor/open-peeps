// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'peep_atom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PeepAtom _$PeepAtomFromJson(Map<String, dynamic> json) {
  return _PeepAtom.fromJson(json);
}

/// @nodoc
mixin _$PeepAtom {
  String get name => throw _privateConstructorUsedError;
  String get directoryName => throw _privateConstructorUsedError;
  double get imageHeight => throw _privateConstructorUsedError;
  double get imageWidth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeepAtomCopyWith<PeepAtom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeepAtomCopyWith<$Res> {
  factory $PeepAtomCopyWith(PeepAtom value, $Res Function(PeepAtom) then) =
      _$PeepAtomCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String directoryName,
      double imageHeight,
      double imageWidth});
}

/// @nodoc
class _$PeepAtomCopyWithImpl<$Res> implements $PeepAtomCopyWith<$Res> {
  _$PeepAtomCopyWithImpl(this._value, this._then);

  final PeepAtom _value;
  // ignore: unused_field
  final $Res Function(PeepAtom) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? directoryName = freezed,
    Object? imageHeight = freezed,
    Object? imageWidth = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      directoryName: directoryName == freezed
          ? _value.directoryName
          : directoryName // ignore: cast_nullable_to_non_nullable
              as String,
      imageHeight: imageHeight == freezed
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as double,
      imageWidth: imageWidth == freezed
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_PeepAtomCopyWith<$Res> implements $PeepAtomCopyWith<$Res> {
  factory _$$_PeepAtomCopyWith(
          _$_PeepAtom value, $Res Function(_$_PeepAtom) then) =
      __$$_PeepAtomCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String directoryName,
      double imageHeight,
      double imageWidth});
}

/// @nodoc
class __$$_PeepAtomCopyWithImpl<$Res> extends _$PeepAtomCopyWithImpl<$Res>
    implements _$$_PeepAtomCopyWith<$Res> {
  __$$_PeepAtomCopyWithImpl(
      _$_PeepAtom _value, $Res Function(_$_PeepAtom) _then)
      : super(_value, (v) => _then(v as _$_PeepAtom));

  @override
  _$_PeepAtom get _value => super._value as _$_PeepAtom;

  @override
  $Res call({
    Object? name = freezed,
    Object? directoryName = freezed,
    Object? imageHeight = freezed,
    Object? imageWidth = freezed,
  }) {
    return _then(_$_PeepAtom(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      directoryName: directoryName == freezed
          ? _value.directoryName
          : directoryName // ignore: cast_nullable_to_non_nullable
              as String,
      imageHeight: imageHeight == freezed
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as double,
      imageWidth: imageWidth == freezed
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PeepAtom extends _PeepAtom {
  _$_PeepAtom(
      {required this.name,
      required this.directoryName,
      required this.imageHeight,
      required this.imageWidth})
      : super._();

  factory _$_PeepAtom.fromJson(Map<String, dynamic> json) =>
      _$$_PeepAtomFromJson(json);

  @override
  final String name;
  @override
  final String directoryName;
  @override
  final double imageHeight;
  @override
  final double imageWidth;

  @override
  String toString() {
    return 'PeepAtom(name: $name, directoryName: $directoryName, imageHeight: $imageHeight, imageWidth: $imageWidth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PeepAtom &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.directoryName, directoryName) &&
            const DeepCollectionEquality()
                .equals(other.imageHeight, imageHeight) &&
            const DeepCollectionEquality()
                .equals(other.imageWidth, imageWidth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(directoryName),
      const DeepCollectionEquality().hash(imageHeight),
      const DeepCollectionEquality().hash(imageWidth));

  @JsonKey(ignore: true)
  @override
  _$$_PeepAtomCopyWith<_$_PeepAtom> get copyWith =>
      __$$_PeepAtomCopyWithImpl<_$_PeepAtom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeepAtomToJson(this);
  }
}

abstract class _PeepAtom extends PeepAtom {
  factory _PeepAtom(
      {required final String name,
      required final String directoryName,
      required final double imageHeight,
      required final double imageWidth}) = _$_PeepAtom;
  _PeepAtom._() : super._();

  factory _PeepAtom.fromJson(Map<String, dynamic> json) = _$_PeepAtom.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get directoryName => throw _privateConstructorUsedError;
  @override
  double get imageHeight => throw _privateConstructorUsedError;
  @override
  double get imageWidth => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PeepAtomCopyWith<_$_PeepAtom> get copyWith =>
      throw _privateConstructorUsedError;
}
