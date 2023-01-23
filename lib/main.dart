import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo/pages/cart.dart';
import 'package:todo/pages/favorite_page.dart';
import 'package:todo/pages/homepage.dart';
import 'package:todo/pages/cart.dart';
import 'package:todo/provider.dart';
import 'package:todo/provider1.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Datakidus(),
        ),
        ChangeNotifierProvider(create: (_) => DataCart())
      ],
      child: const MyApp(),
    ),
  );
}

enum _SelectedTab { home, favorite, search, person }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _selectedTab = _SelectedTab.home;
  var pages = [HomePage(), Favorite(), Cart()];
  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              icon: Icon(
                Icons.account_circle_rounded,
              ),
              onPressed: () => {},
            )
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: 0),
          child: DotNavigationBar(
            margin: EdgeInsets.only(left: 10, right: 10),
            currentIndex: _SelectedTab.values.indexOf(_selectedTab),
            backgroundColor: Colors.black87,
            dotIndicatorColor: Colors.orange.shade600,
            unselectedItemColor: Colors.grey[300],
            onTap: _handleIndexChanged,
            items: [
              DotNavigationBarItem(
                icon: Icon(Icons.home),
                selectedColor: Colors.orange.shade600,
              ),
              DotNavigationBarItem(
                icon: Icon(Icons.favorite),
                selectedColor: Colors.orange.shade600,
              ),
              DotNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                selectedColor: Colors.orange.shade600,
              ),
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: pages[_SelectedTab.values.indexOf(_selectedTab)],
        drawer: Drawer(
          width: 230,
          elevation: 1,
          backgroundColor: Colors.black87,
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            DrawerHeader(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'lib/images/pro.png',
                      fit: BoxFit.cover,
                      height: 90.0,
                      width: 90.0,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  Text(
                    'Tesfawtsion Shimelis',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  Text(
                    'Tesfaw@gmail.com',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 25),
              horizontalTitleGap: 2,
              leading: Icon(
                Icons.home_rounded,
                color: Colors.orange.shade500,
              ),
              title: Text(
                'Home',
                style: GoogleFonts.bitter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
              onTap: () {},
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 25),
              horizontalTitleGap: 2,
              leading: Icon(
                Icons.trending_up_rounded,
                color: Colors.orange.shade500,
              ),
              title: Text(
                'Trending',
                style: GoogleFonts.bitter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
              onTap: () {},
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 25),
              horizontalTitleGap: 2,
              leading: Icon(
                Icons.category_rounded,
                color: Colors.orange.shade500,
              ),
              title: Text(
                'Category',
                style: GoogleFonts.bitter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
              onTap: () {},
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 25),
              horizontalTitleGap: 2,
              leading: Icon(
                Icons.wallet,
                color: Colors.orange.shade500,
              ),
              title: Text(
                'Wallet',
                style: GoogleFonts.bitter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
              onTap: () {},
            ),
          ]),
        ),
      ),
      theme: FlexThemeData.light(scheme: FlexScheme.hippieBlue),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.espresso,
      ),
      themeMode: ThemeMode.dark,
    );
  }
}
