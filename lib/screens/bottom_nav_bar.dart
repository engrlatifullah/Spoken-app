import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spokenapp/screens/home_screen.dart';
import 'package:spokenapp/screens/quote_player.dart';

import '../constant.dart';
import '../widget/reusable_text.dart';
import 'now_playing.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final List<String> tabs = [
    "assets/icons/house.svg",
    "assets/icons/quote-left.svg",
    "assets/icons/rectangle-vertical-history.svg",
  ];
  int currentIndex = 0;
  final List<Widget> _pages = [const HomeScreen(),  const QuotePlayer(),const NowPlaying(changeScreen: false,index: 0,),];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: Container(
        height: 80,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: textColor.withOpacity(0.4),
              offset: const Offset(0, 2),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(tabs.length, (index) {
            return InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: SizedBox(
                    height: 25,
                    width: 25,
                    child: SvgPicture.asset(tabs[index],color: currentIndex == index ? textColor : unSelectColor)));
          },),
        ),
      ),
      body: _pages[currentIndex],
    ),);
  }
}
