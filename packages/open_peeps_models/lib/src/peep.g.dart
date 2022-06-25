// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peep.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Peep _$$_PeepFromJson(Map<String, dynamic> json) => _$_Peep(
      head: PeepAtom.fromJson(json['head'] as Map<String, dynamic>),
      face: PeepAtom.fromJson(json['face'] as Map<String, dynamic>),
      facialHair: PeepAtom.fromJson(json['facialHair'] as Map<String, dynamic>),
      accessory: PeepAtom.fromJson(json['accessory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PeepToJson(_$_Peep instance) => <String, dynamic>{
      'head': instance.head,
      'face': instance.face,
      'facialHair': instance.facialHair,
      'accessory': instance.accessory,
    };
