import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:viper_architecture_pattern/modules/home/entity/HomeResponseModel.dart';
import 'package:viper_architecture_pattern/modules/home/iterator/HomeIterator.dart';

class HomePresenter with ChangeNotifier {
  HomeIterator _homeIterator = HomeIterator();

  Future<HomeRestResponseModel> fetchResponse() async {
    HomeRestResponseModel restResponseModel =
        await _homeIterator.fetchHomeRestData();
    return restResponseModel;
  }
}
