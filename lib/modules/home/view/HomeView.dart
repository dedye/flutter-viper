import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viper_architecture_pattern/modules/home/entity/HomeResponseModel.dart';
import 'package:viper_architecture_pattern/modules/home/presenter/HomePresenter.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Consumer<HomePresenter>(
          builder: (context, model, child) {
            return FutureBuilder<HomeRestResponseModel>(
              future: model.fetchResponse(), // async work
              builder: (BuildContext context, AsyncSnapshot<HomeRestResponseModel> snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting: return Text('Loading....');
                  default:
                    if (snapshot.hasData)
                      return _HomeItemView(restResponseModel: snapshot.data!,);
                    else
                      {
                        return Text('Error: ${snapshot.error}');
                      }
                }
              },
            );

          },
        ),
      ),
    );
  }
}

class _HomeItemView extends StatelessWidget {
  final HomeRestResponseModel restResponseModel;
  const _HomeItemView({
    Key? key,
    required this.restResponseModel
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('title : ${restResponseModel.title}');
  }
}
