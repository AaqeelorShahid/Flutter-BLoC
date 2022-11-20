import 'package:flutter/cupertino.dart';

import "bloc.dart";

class Provider extends InheritedWidget {
  final bloc = Bloc();

  Provider({Key? key, required Widget child}) : super(key: key, child: child);
  // Provider({super.key, required super.child});

  @override
  bool updateShouldNotify(_) {
    return true;
  }

  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>() as Provider)
        .bloc;
  }
}
