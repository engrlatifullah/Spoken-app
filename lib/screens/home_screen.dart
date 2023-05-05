import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';
import '../widget/reusable_text.dart';
import 'menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final GlobalKey<ScaffoldState> _ScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _ScaffoldKey,
      drawer: Menu(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration:  BoxDecoration(
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: textColor.withOpacity(0.4),
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            padding: const EdgeInsets.all(20),
            child: InkWell(
                onTap: (){
                  _ScaffoldKey.currentState!.openDrawer();
                },
                child: SvgPicture.asset("assets/images/logo.svg")),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const ReusableText(
                  title: "Todays collection",
                  size: 16,
                  color: textColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 220,
                      width: MediaQuery.of(context).size.width - 130,
                      margin: const EdgeInsets.only(top: 60),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/img.png"),
                        ),
                      ),
                    ),
                    Container(
                      height: 220,
                      width: MediaQuery.of(context).size.width - 100,
                      margin: const EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/im.png"),
                        ),
                      ),
                    ),
                    Container(
                      height: 225,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/i.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                        color: textColor.withOpacity(0.4),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const ReusableText(
                    title: "5 Daily Notifications",
                    color: textColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
