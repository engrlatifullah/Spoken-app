import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spokenapp/constant.dart';
import 'package:spokenapp/widget/reusable_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> images = [
    "assets/images/Rectangle 1.png",
    "assets/images/Rectangle 2.png",
    "assets/images/Rectangle 33.png",
    "assets/images/Rectangle 1.png",
    "assets/images/Rectangle 2.png",
    "assets/images/Rectangle 33.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    lightColor,
                    lightWhiteColor,
                  ]),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SizedBox(
                              height: 20,
                              width: 20,
                              child: SvgPicture.asset(
                                  "assets/icons/arrow_down.svg"))),
                      const SizedBox(
                        width: 20,
                      ),
                      const ReusableText(
                        title: "Profile",
                        size: 16,
                        weight: FontWeight.w400,
                        color: whiteColor,
                      ),
                      const Spacer(),
                      const Badge(
                          smallSize: 8,
                          child: Icon(
                            Icons.notifications_sharp,
                            color: whiteColor,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset("assets/icons/Basket.svg")
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(top: 200, right: 20, left: 20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(5),
                    ),
                    color: whiteColor),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    // buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: cyanColor
                          ),
                          child: const ReusableText(
                            title: "CONNECT",weight: FontWeight.w400,color: whiteColor,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: darkBlueColor
                          ),
                          child: const ReusableText(
                            title: "Message",weight: FontWeight.w400,color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // comments friends photos
                    ve
                    SizedBox(height: 20,),
                    ReusableText(title: "QuietWonder",size: 28,color: textColor,),
                    SizedBox(height: 10,),
                    ReusableText(title: "San Francisco, USA",size: 16,color: textColor,),
                    SizedBox(height: 10,),
                    Divider(),
                    SizedBox(height: 10,),
                    ReusableText(title: "An artist of considerable range, Jessica\nname taken by Melbourne …",size: 16,color: textColor,),
                    SizedBox(height: 10,),
                    ReusableText(title: "Show more",size: 16,color: blueColor,),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(title: "Popular",size: 16,color: textColor,weight: FontWeight.bold,),
                        ReusableText(title: "View All",color: skyColor,),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/Rectangle 1.png"),
                        Image.asset("assets/images/Rectangle 2.png"),
                        Image.asset("assets/images/Rectangle 33.png"),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/Rectangle 1.png"),
                        Image.asset("assets/images/Rectangle 2.png"),
                        Image.asset("assets/images/Rectangle 33.png"),
                      ],
                    ),
                    const SizedBox(height: 10,),
                  ],
                ),
              ),
              //Profile Picture
              Positioned(
                left: 0,
                right: 0,
                top: 100,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/profile.png"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
