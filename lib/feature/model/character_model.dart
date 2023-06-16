import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'info_model.dart';

part 'character_model.g.dart';

@JsonSerializable()
class CharacterModel extends Equatable {
  final int? id;
  final String? name;
  final String? status;
  final String? species;
  final String? type;
  final String? gender;
  final String? image;
  final List<String?>? episode;
  final String? url;
  final DateTime? created;

  const CharacterModel({this.id, this.name, this.status, this.species, this.type, this.gender, this.image, this.episode, this.url, this.created});

  CharacterModel copyWith({
    int? id,
    String? name,
    String? status,
    String? species,
    String? type,
    String? gender,
    String? image,
    List<String>? episode,
    String? url,
    DateTime? created,
  }) =>
      CharacterModel(
        id: id ?? this.id,
        name: name ?? this.name,
        status: status ?? this.status,
        species: species ?? this.species,
        type: type ?? this.type,
        gender: gender ?? this.gender,
        image: image ?? this.image,
        episode: episode ?? this.episode,
        url: url ?? this.url,
        created: created ?? this.created,
      );

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return _$CharacterModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CharacterModelToJson(this);
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}

@JsonSerializable()
class BaseCharacterModel extends Equatable {
  final InfoModel? info;
  final List<CharacterModel>? results;

  const BaseCharacterModel({this.info, this.results});

  factory BaseCharacterModel.fromJson(Map<String, dynamic> json) {
    return _$BaseCharacterModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BaseCharacterModelToJson(this);
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}
