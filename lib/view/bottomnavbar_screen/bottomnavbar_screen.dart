import 'package:ecommerce_clone_july/utils/color_constants.dart';
import 'package:ecommerce_clone_july/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';


class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int selectedicon = 0;
  final List<Widget> screens=[
    HomeScreen(),Text('data'),Text('data'),Text('data')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    floatingActionButton: FloatingActionButton(
      
     backgroundColor: ColorConstants.WHITE,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      
       onPressed: () {},
       child: Icon(Icons.shopping_cart_outlined),
     ),
      body: screens[selectedicon],
     
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedicon, 
        selectedItemColor: ColorConstants.PRIMARY,
        unselectedItemColor: ColorConstants.BLACK,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            selectedicon = value; 
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}


























