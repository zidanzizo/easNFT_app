import 'dart:ui';

import 'package:easnft_app/presentation/page/home_page.dart';
import 'package:easnft_app/presentation/widgets/bottom_navbar_item.dart';
import 'package:easnft_app/shared/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: buildBody(currentIndex),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 75,
              width: MediaQuery.of(context).size.width - (20 * 2),
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: cardColor.withOpacity(0.1),
                border: Border.all(
                  color: backgroundColor,
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomNavbarItem(
                    title: 'Home',
                    iconUrl: 'assets/icon_home.png',
                    currentIndex: currentIndex,
                    id: 0,
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                  ),
                  BottomNavbarItem(
                    title: 'Explore',
                    iconUrl: 'assets/icon_explore.png',
                    currentIndex: currentIndex,
                    id: 1,
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                  ),
                  BottomNavbarItem(
                    title: 'Wallet',
                    iconUrl: 'assets/icon_wallet.png',
                    currentIndex: currentIndex,
                    id: 2,
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                  ),
                  BottomNavbarItem(
                    title: 'Live Bids',
                    iconUrl: 'assets/icon_live_bid.png',
                    currentIndex: currentIndex,
                    id: 3,
                    onTap: () {
                      setState(() {
                        currentIndex = 3;
                      });
                    },
                  ),
                  BottomNavbarItem(
                    title: 'Profile',
                    iconUrl: 'assets/icon_profile.png',
                    currentIndex: currentIndex,
                    id: 4,
                    isProfile: true,
                    onTap: () {
                      setState(() {
                        currentIndex = 4;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  buildBody(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return Center(
          child: Text(
            'expore',
            style: whiteTextStyle,
          ),
        );
      case 2:
        return const HomePage();
      case 3:
        return const HomePage();
      case 4:
        return const HomePage();
      default:
        return const HomePage();
    }
  }
}
