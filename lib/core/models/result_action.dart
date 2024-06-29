import 'package:json_annotation/json_annotation.dart';
part 'result_action.g.dart';

@JsonSerializable()
class ResultAction<T> {
  int statues;
  String message;
  String info;
  bool success;
  dynamic data;

  ResultAction({
    required this.message,
    required this.info,
    required this.statues,
    required this.data,
    required this.success,
  });

  factory ResultAction.fromJson(Map<String, dynamic> json) =>
      _$ResultActionFromJson(json);
  Map<String, dynamic> toJson() => _$ResultActionToJson(this);
}
