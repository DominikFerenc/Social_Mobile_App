import 'package:flutter/material.dart';
import 'package:hejto_app/screens/login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.04),
            Image.asset(
              'assets/images/hejto_logo_white.png',
              fit: BoxFit.cover,
              height: 40,
              width: 130,
              color: Theme.of(context).accentColor,
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              "Aplikacja mobilna",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            SizedBox(height: size.height * 0.60),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }),
                );
              },
              child: Text("Zaloguj się"),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue.shade700,
                onPrimary: Colors.white,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              "lub",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.02),
            ElevatedButton(
              onPressed: () {},
              child: Text("Zarejstruj się"),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue.shade400,
                onPrimary: Colors.white,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    ///Background();
  }
}
