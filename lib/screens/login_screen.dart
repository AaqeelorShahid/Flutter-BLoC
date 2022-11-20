import "package:flutter/material.dart";
import 'package:login_bloc/bloc/bloc.dart';

import "../bloc/Provider.dart";

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    final bloc = Provider.of(context);

    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(bloc),
          passwordField(bloc),
          Container(
            margin: const EdgeInsets.all(10.0),
          ),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Email Address",
              labelText: "Email Address",
              errorText: snapshot.error.toString(),
            ),
          );
        });
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        print(snapshot.error);
        return TextField(
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "Password",
            errorText: snapshot.error.toString(),
          ),
          onChanged: bloc.changePassword,
        );
      },
    );
  }

  submitButton() {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
        foregroundColor: MaterialStateProperty.all(Colors.black),
      ),
      child: const Text("Submit"),
    );
  }
}
