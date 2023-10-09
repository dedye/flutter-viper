import 'package:viper_architecture_pattern/modules/home/data/HomeRestService.dart';
import 'package:viper_architecture_pattern/modules/home/entity/HomeResponseModel.dart';

class HomeIterator {
  HomeRestService _homeRestService = HomeRestService();

  Future<HomeRestResponseModel> fetchHomeRestData() async {
    final response = await _homeRestService.get("https://jsonplaceholder.typicode.com/todos/1");
    return HomeRestResponseModel.fromJson(response);
  }
}
