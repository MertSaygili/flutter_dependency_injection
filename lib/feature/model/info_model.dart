import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'info_model.g.dart';

@JsonSerializable()
class InfoModel extends Equatable {
  final int? count;
  final int? pages;
  final String? next;

  const InfoModel({this.count, this.pages, this.next});

  factory InfoModel.fromJson(Map<String, dynamic> json) {
    return _$InfoModelFromJson(json);
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}

@JsonSerializable()
class BaseResponseModel extends Equatable {
  final InfoModel? info;
  final List<dynamic>? results;

  const BaseResponseModel({this.info, this.results});

  @override
  List<Object?> get props => throw UnimplementedError();
}
