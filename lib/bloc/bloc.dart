import "dart:async";

import 'validators.dart';

class Bloc extends Object with Validators {
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _email.sink.add;

  dispose() {
    _email.close();
    _password.close();
  }
}
