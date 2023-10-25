import 'package:freezed_annotation/freezed_annotation.dart';
part 'HomeRestResponseModel.freezed.dart';
part 'HomeRestResponseModel.g.dart';

@unfreezed
class HomeRestResponseModel with _$HomeRestResponseModel  {
  factory HomeRestResponseModel({
    required final Int userId,
    required final Int id,
    required final String title,
    @Default(false) bool completed,
  }) = _HomeRestResponseModel;

  factory HomeRestResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeRestResponseModelFromJson(json);
}