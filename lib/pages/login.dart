import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import './dashboard.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() {
    return _SignInState();
  }
}

class _SignInState extends State<SignIn> {
  String email, password;

  Future<String> _authUser(LoginData data) {
    // print('Name: ${data.name}, Password: ${data.password}');
    // return Future.delayed(loginTime).then((_) {
    //   if (!users.containsKey(data.name)) {
    //     return 'Username not exists';
    //   }
    //   if (users[data.name] != data.password) {
    //     return 'Password does not match';
    //   }
    //   return null;
    // });
  }

  Future<String> _recoverPassword(String name) {
    // print('Name: $name');
    // return Future.delayed(loginTime).then((_) {
    //   if (!users.containsKey(name)) {
    //     return 'Username not exists';
    //   }
    //   return null;
    // });
  }

  // FirebaseAuth auth = FirebaseAuth.instance;
  Widget build(BuildContext context) {
    return Center(
      child: FlutterLogin(
        title: 'Sigma',
        logo: 'assets/images/full-bloom.png',
        onLogin: _authUser,
        onSignup: _authUser,
        onSubmitAnimationCompleted: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => Dashboard(),
          ));
        },
        onRecoverPassword: _recoverPassword,
      ),
    );
  }
}
