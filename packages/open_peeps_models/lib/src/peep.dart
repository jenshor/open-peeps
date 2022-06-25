import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_peeps_models/open_peeps_models.dart';

part 'peep.freezed.dart';
part 'peep.g.dart';

/// Represents an abstract person, aka a peep.
@freezed
class Peep with _$Peep {
  /// Creates a new instance of [Peep].
  factory Peep({
    required PeepAtom head,
    required PeepAtom face,
    required PeepAtom facialHair,
    required PeepAtom accessory,
  }) = _Peep;

  /// Creates a [Peep] instance from a json object.
  factory Peep.fromJson(Map<String, dynamic> json) => _$PeepFromJson(json);
}
