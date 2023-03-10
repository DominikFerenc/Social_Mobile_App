import 'package:flutter/material.dart';
import 'package:hejto_app/screens/login/widget/login_button_widget.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  //final _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final loginController = TextEditingController();
  bool submitPassword = false;
  bool submitLogin = false;
  final Color google_color = Colors.red;
  final String google_logo_image = 'assets/images/google.png';
  final String title_google_button = 'Kontynuuj z Google';

  final Color fb_color = Colors.blue;
  final String fb_logo_image = 'assets/images/fb.png';
  final String title_fb_button = 'Kontynuuj z Facebook';
  final Color apple_color = Colors.white;
  final String apple_logo_image = 'assets/images/apple.png';
  final String title_apple_button = 'Kontynuuj z Apple';

  @override
  void initState() {
    super.initState();
    passwordController.addListener(
      () {
        setState(
          () {
            submitPassword = passwordController.text.isNotEmpty;
          },
        );
      },
    );

    loginController.addListener(
      () {
        setState(() {
          submitLogin = loginController.text.isNotEmpty;
        });
      },
    );
  }

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //String value_psw;
    return SafeArea(
      child: Form(
        child: Container(
          height: size.height,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                /*Text(
                  "Zaloguj się aby kontynuować",
                  //textAlign: TextAlign.center,
                  style: TextStyle(

                      // fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 12),
                ),*/

                TextField(
                  controller: loginController,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'E-mail lub login',
                    labelStyle: TextStyle(color: Colors.white, fontSize: 12),
                    helperStyle: TextStyle(color: Colors.green),
                    enabledBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                TextFormField(
                  controller: passwordController,
                  cursorColor: Colors.white,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    labelText: 'Hasło',
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    helperStyle: TextStyle(color: Colors.green),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      TextButton(
                        child: Text(
                          "Nie pamietasz hasła?",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        onPressed: () {},
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: submitLogin && submitPassword
                      ? () {
                          print("ok");
                        }
                      : null,
                  child: Text(
                    "Zaloguj się".toUpperCase(),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue.shade600,
                    onPrimary: Colors.white,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          endIndent: 10.0,
                          indent: 6,
                          thickness: 1,
                        ),
                      ),
                      Text(
                        "LUB",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          indent: 10.0,
                          endIndent: 6,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                loginElevatedButton(
                    fb_logo_image, title_fb_button, context, google_color),
                loginElevatedButton(
                    google_logo_image, title_google_button, context, fb_color),
                loginElevatedButton(
                    apple_logo_image, title_apple_button, context, apple_color),
                SizedBox(
                  height: size.height * 0.02,
                ),
                /*const Divider(
                  height: 40,
                  color: Colors.white,
                  thickness: 1,
                  endIndent: 1.0,
                ),*/

                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "Nie masz jeszcze konta?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 11),
                ),
                TextButton(
                  child: Text(
                    "Zarejestruj się.",
                    style: TextStyle(fontSize: 10),
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
