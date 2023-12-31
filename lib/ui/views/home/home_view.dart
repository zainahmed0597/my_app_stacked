import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(model.title),
              Text(model.counter.toString()),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.updateCounter,
          child:  const Icon(
            Icons.add
          ),
        ),
      ),
    );
  }
}
