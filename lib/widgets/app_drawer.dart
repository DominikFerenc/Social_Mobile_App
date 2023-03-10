import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool _light = false;

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeProvider>(context);
    return Drawer(
      //elevation: 20.0,
      child: SafeArea(
        minimum: const EdgeInsets.all(8.0),
        top: true,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 2.78,
              child: DrawerHeader(
                margin: EdgeInsets.only(top: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: NetworkImage(
                        "https://www.a2hosting.com/blog/content/uploads/2018/07/man-holding-camera.png.webp",
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Testowy_user_z_hejto",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(2.0),

                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      // color: Colors.amber,
                      child: Padding(
                        padding: EdgeInsets.only(left: 12, right: 12),
                        child: Text(
                          "Kosmonauta".toUpperCase(),
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Tu bedą osiągniecia",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //margin: EdgeInsets.all(0.0),
            //padding: EdgeInsets.all(0.0)),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ListTile(
                  title: Text('Mój profil'),
                  leading: Icon(Icons.person),
                  onTap: () {
                    print("User");
                  },
                ),
                ListTile(
                  title: Text('Wygląd aplikacji'),
                  leading: Icon(Icons.palette),
                  onTap: () {
                    print("User");
                  },
                ),
                ListTile(
                  title: Text('Ustawienia'),
                  leading: Icon(Icons.settings),
                  onTap: () {
                    print("Ustawienia");
                  },
                ),
                const Divider(
                  height: 20,
                ),
                ListTile(
                  title: themeNotifier.isLightTheme
                      ? Text("Tryb nocny")
                      : Text("Tryb dzienny"),
                  leading: themeNotifier.isLightTheme
                      ? Icon(Icons.dark_mode)
                      : Icon(Icons.light_mode),
                  trailing: Switch(
                    value: themeNotifier.isLightTheme,
                    onChanged: (state) {
                      setState(
                        () {
                          themeNotifier.setThemeData = state;
                        },
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: ListTile(
                          title: Text('Wyloguj'),
                          leading: Icon(Icons.logout_sharp),
                          onTap: () {
                            print("Ustawienia");
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: ListTile(
                          trailing: Text(
                            'Wersja Alfa 0.1',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );

    //Divider(), //here is a divider
    //ListTile(...),
    //rest of your items
  }
}
