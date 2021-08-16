import 'package:flutter/material.dart';
import 'package:yugo_test/screen/bookingscreen.dart';
import 'package:yugo_test/screen/groupscreen.dart';
import 'package:yugo_test/screen/homescreen.dart';
import 'package:yugo_test/screen/profilescreen.dart';

import 'messagescreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _page = 0;
  List<Widget> _children = [
    HomeScreen(),
    BookingScreen(),
    GroupScreen(),
    MessageScreen(),
    ProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _page = index;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
        TextEditingController().clear();
      },
      child: Scaffold(
        bottomNavigationBar: _bottomNavigationBar,
        body: _children.elementAt(_page),
      ),
    );
  }

  Widget get _bottomNavigationBar {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          label: "Bookings",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            
            AssetImage(
              "assets/images/output-onlinepngtools.png",
            ),
            // size: 25,
          ),
          label: "Groups",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline,),
          label: "Message",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: "Profile",
        ),
      ],
      unselectedItemColor: Color(
        0xFFA9A9A9,
      ),
      selectedItemColor: Color(
        0xFFCEAC81,
      ),
      currentIndex: _page,
      onTap: _onItemTapped,
    );
  }
}
