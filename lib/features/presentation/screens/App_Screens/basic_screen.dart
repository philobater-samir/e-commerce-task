import 'package:e_commerce_task_philobater_samir/core/General/app_color.dart';
import 'package:e_commerce_task_philobater_samir/core/General/app_string.dart';
import 'package:e_commerce_task_philobater_samir/core/General/Theming.dart';
import 'package:e_commerce_task_philobater_samir/features/presentation/screens/App_Screens/home_screen/home_screen.dart';
import 'package:e_commerce_task_philobater_samir/features/presentation/screens/App_Screens/oreders_screen/orders_screen.dart';
import 'package:e_commerce_task_philobater_samir/features/presentation/screens/App_Screens/profile_screen/profile_screen.dart';
import 'package:e_commerce_task_philobater_samir/features/presentation/screens/App_Screens/wishList_screen/wishlist_screen.dart';
import 'package:flutter/material.dart';

class basicScreen extends StatefulWidget {
  static const String routeName = AppString.homeRoute;

  @override
  State<basicScreen> createState() => _basicScreenState();
}

class _basicScreenState extends State<basicScreen> {
  int currentIndex = 0;

  List<Widget> screens = [
    homeScreen(),
    wishlistScreen(),
    ordersScreen(),
    profileScreen(),
  ];

  PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = homeScreen();

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        title: Text(
          AppString.appTitle,
          style: AppTheme().textTheme.bodyMedium?.copyWith(
              color: AppColor.red, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 1,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search_rounded,
              color: AppColor.red,
              size: 30,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.red,
        elevation: 10,
        child: Stack(children: [
          Center(
            child: Icon(
              Icons.shopping_cart,
              size: 27,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: AppColor.white),
              child: Center(
                  child: Text(
                AppString.numbers,
                style: TextStyle(color: AppColor.black),
              )),
            ),
          )
        ]),
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        color: AppColor.white,
        height: _height * .07,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  currentScreen = homeScreen();
                  currentIndex = 0;
                });
              },
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color:
                          currentIndex == 0 ? AppColor.red : AppColor.greyBlack,
                    ),
                    Text(
                      AppString.home,
                      style: TextStyle(
                          color: currentIndex == 0
                              ? AppColor.red
                              : AppColor.greyBlack,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentScreen = wishlistScreen();
                  currentIndex = 1;
                });
              },
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      color:
                          currentIndex == 1 ? AppColor.red : AppColor.greyBlack,
                    ),
                    Text(
                      AppString.wishlist,
                      style: TextStyle(
                          color: currentIndex == 1
                              ? AppColor.red
                              : AppColor.greyBlack,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentScreen = ordersScreen();
                  currentIndex = 2;
                });
              },
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.paste,
                      color:
                          currentIndex == 2 ? AppColor.red : AppColor.greyBlack,
                    ),
                    Text(
                      AppString.orders,
                      style: TextStyle(
                          color: currentIndex == 2
                              ? AppColor.red
                              : AppColor.greyBlack,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                currentScreen = profileScreen();
                currentIndex = 3;
              },
              child: Padding(
                padding: EdgeInsets.only(top: 5, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color:
                          currentIndex == 3 ? AppColor.red : AppColor.greyBlack,
                    ),
                    Text(
                      AppString.profile,
                      style: TextStyle(
                          color: currentIndex == 3
                              ? AppColor.red
                              : AppColor.greyBlack,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
    );
  }
}
