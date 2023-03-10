import 'package:flutter/material.dart';
import 'components/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        centerTitle: true,
        title: Text('Hello'),
        /*Image.asset(
          'assets/images/hejto_logo_white.png',*/
        //fit: BoxFit.cover,
        // height: 19,
        //color: Theme.of(context).accentColor,
      ),
      body: Body(),
    );
  }
}
