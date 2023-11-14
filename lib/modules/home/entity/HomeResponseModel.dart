import 'package:freezed_annotation/freezed_annotation.dart';

part 'HomeResponseModel.freezed.dart';
part 'HomeResponseModel.g.dart';

@freezed
class HomeRestResponseModel with _$HomeRestResponseModel  {
  factory HomeRestResponseModel({
    required final int userId,
    required final int id,
    required final String title,
    @Default(false) bool completed,
  }) = _HomeRestResponseModel;

  factory HomeRestResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeRestResponseModelFromJson(json);
}