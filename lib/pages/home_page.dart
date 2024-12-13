import 'package:boilerplate/components/bottom_nav_bar.dart';
import 'package:boilerplate/pages/cart_page.dart';
import 'package:boilerplate/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // initialize the bottom nav it with 0
  int _selectedIndex = 0;

// this updates when a use taps oneach of the icons in the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// List of pages
final List<Widget> _pages = [
  const ShopPage(),
  const CartPage(),
];


  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(onPressed: () {
              Scaffold.of(context).openDrawer();
            }, icon: const Icon(Icons.menu));
          } 
        ),
        ),
        drawer: Drawer( backgroundColor: Colors.grey[800], child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                    child: Image.asset(
                  'lib/images/nike.webp',
                  color: Colors.white,
                )),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20,)
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
        ),
      body: _pages[_selectedIndex],
       bottomNavigationBar: Padding(
         padding: const EdgeInsets.only(bottom: 25),
         child: BottomNavBar(onTabChange: (index) =>  navigateBottomBar(index),),
       ),
    );
  }
}