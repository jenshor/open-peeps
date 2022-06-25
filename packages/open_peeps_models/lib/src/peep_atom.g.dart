// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peep_atom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PeepAtom _$$_PeepAtomFromJson(Map<String, dynamic> json) => _$_PeepAtom(
      name: json['name'] as String,
      directoryName: json['directoryName'] as String,
      imageHeight: (json['imageHeight'] as num).toDouble(),
      imageWidth: (json['imageWidth'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PeepAtomToJson(_$_PeepAtom instance) =>
    <String, dynamic>{
      'name': instance.name,
      'directoryName': instance.directoryName,
      'imageHeight': instance.imageHeight,
      'imageWidth': instance.imageWidth,
    };
