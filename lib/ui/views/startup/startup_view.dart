import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'startup_viewmodel.dart';

class StartupView extends StatelessWidget {
  const StartupView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      viewModelBuilder: () => StartupViewModel(),
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
