import 'package:flutter/material.dart';
import 'package:hejto_app/screens/welcome/welcome_screen.dart';
import '/widgets/bottom_navigation.dart';
import '../widgets/app_drawer.dart';
import 'welcome/welcome_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        //backgroundColor: Color(0xFF171920),

        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).backgroundColor,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          centerTitle: true,
          title: Image.asset(
            'assets/images/hejto_logo_white.png',
            fit: BoxFit.cover,
            height: 19,
            color: Theme.of(context).accentColor,
          ),
          bottom: TabBar(
            //indicatorColor: Theme.of(context).accentColor,
            indicatorColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.label,

            tabs: [
              Tab(
                text: 'Docenione',
              ),
              Tab(
                text: 'Najnowsze',
              ),
              Tab(
                text: 'Obserwowane',
              ),
            ],
          ),
          leading: Container(
            child: Builder(
              builder: (context) => IconButton(
                icon: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                  child: Image.network(
                    "https://www.a2hosting.com/blog/content/uploads/2018/07/man-holding-camera.png.webp",
                    fit: BoxFit.fill,
                    width: 40.0,
                    height: 40.0,
                  ),
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Center(
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WelcomeScreen()));
                    //WelcomeScreen();
                  },
                  child: Text('Testowy welcome screen'),
                ),
                //Text("Tu bedą sztosy"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Tu bedą najnowsze"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Tu bedą decenione"),
              ),
            ),
          ],
        ),
        //1
        drawer: AppDrawer(),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
