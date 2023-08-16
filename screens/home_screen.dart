import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_UI_Home_Screen_Speed_Code/constants.dart';

import 'components/appbar.dart';
import 'components/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottom bar
      // now we will use bottom bar package
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.keyboard_return),
              title: Text(''),
              activeColor: kpink,
              inactiveColor: Colors.grey[300]),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            inactiveColor: Colors.grey[300],
            activeColor: kpink,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            CustomeAppBar(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hi....!",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "Today is a good day\nto learn and to do something better",
                            style: TextStyle(
                              color: Colors.black54,
                              wordSpacing: 2.5,
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: kpurple,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Image.asset(
                              "assets/images/profile.png",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //sorting

                  //category list

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  //now we create model of our images and colors which we will use in our app
                  const SizedBox(
                    height: 20,
                  ),
//we can not use gridview inside column
//use shrinkwrap and physical scroll
                  CategoryList(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
