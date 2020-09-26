import 'package:Bottom_Navbar/CustomNavbar.dart';
import 'package:Bottom_Navbar/screens/HomeScreen.dart';
import 'package:Bottom_Navbar/screens/SliverScreen.dart';
import 'package:Bottom_Navbar/widgets/FABbottomNavbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  List _screens = [
    HomeScreen(),
    SliverScreen(),
    Scaffold(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomNavbar(),
      // bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: _currentIndex,
      //     backgroundColor: Colors.white,
      //     selectedItemColor: Colors.white,
      //     unselectedItemColor: Colors.grey,
      //     elevation: 0.0,
      //     showSelectedLabels: false,
      //     showUnselectedLabels: false,
      //     onTap: (index) => setState(() => _currentIndex = index),
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: Container(
      //             padding: const EdgeInsets.symmetric(
      //               vertical: 6.0,
      //               horizontal: 16.0,
      //             ),
      //             decoration: BoxDecoration(
      //                 color: _currentIndex == 0
      //                     ? Colors.green
      //                     : Colors.transparent,
      //                 borderRadius: BorderRadius.circular(20.0)),
      //             child: Icon(Icons.home),
      //           ),
      //           title: Text("Home")),
      //       BottomNavigationBarItem(
      //           icon: Container(
      //             padding: const EdgeInsets.symmetric(
      //               vertical: 6.0,
      //               horizontal: 16.0,
      //             ),
      //             decoration: BoxDecoration(
      //                 color: _currentIndex == 1
      //                     ? Colors.green
      //                     : Colors.transparent,
      //                 borderRadius: BorderRadius.circular(20.0)),
      //             child: Icon(Icons.trending_up),
      //           ),
      //           title: Text("Home")),
      //       BottomNavigationBarItem(
      //           icon: Container(
      //             padding: const EdgeInsets.symmetric(
      //               vertical: 6.0,
      //               horizontal: 16.0,
      //             ),
      //             decoration: BoxDecoration(
      //                 color: _currentIndex == 2
      //                     ? Colors.green
      //                     : Colors.transparent,
      //                 borderRadius: BorderRadius.circular(20.0)),
      //             child: Icon(Icons.radio),
      //           ),
      //           title: Text("Home")),
      //       BottomNavigationBarItem(
      //           icon: Container(
      //             padding: const EdgeInsets.symmetric(
      //               vertical: 6.0,
      //               horizontal: 16.0,
      //             ),
      //             decoration: BoxDecoration(
      //                 color: _currentIndex == 3
      //                     ? Colors.green
      //                     : Colors.transparent,
      //                 borderRadius: BorderRadius.circular(20.0)),
      //             child: Icon(Icons.chevron_left),
      //           ),
      //           title: Text("Home")),
      //     ]),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: 'Scan & Pay',
        color: Colors.grey,
        backgroundColor: Colors.white,
        selectedColor: Colors.black,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: (index) => setState(() => _currentIndex = index),
        items: [
          FABBottomAppBarItem(iconData: Icons.home, text: 'Home' ),
          FABBottomAppBarItem(iconData: Icons.assignment, text: 'Statement'),
          FABBottomAppBarItem(
              iconData: Icons.account_circle, text: 'MyPayment'),
          FABBottomAppBarItem(iconData: Icons.more_horiz, text: 'Offers'),
        ],
      ),
      body: _screens[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.scatter_plot),
        elevation: 2.0,
        backgroundColor: Colors.green,
      ),

      // body: _screens[_currentIndex],
    );
  }

  void _onTapped(int value) {}
}
