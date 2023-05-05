import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spokenapp/screens/profile_screen.dart';

import '../constant.dart';
import '../widget/reusable_text.dart';
import 'browse_speaker.dart';
import 'browse_subject.dart';

class Quote extends StatefulWidget {
  const Quote({Key? key}) : super(key: key);

  @override
  State<Quote> createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              const ReusableText(
                title: "Spoken subject:",
                color: textColor,
                weight: FontWeight.w500,
              ),
              InkWell(
                onTap: (){
                  Get.to(const BrowseSubject(),transition: Transition.rightToLeft);
                },
                child: const ReusableText(
                  title: "Browse",
                  color: textColor,
                  weight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              Get.to(const BrowseSubject(),transition: Transition.rightToLeft);
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/nr.png"))),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: blackColor.withOpacity(0.2),
                    ),
                  ),
                  Image.asset("assets/images/Path 32.png"),
                  const ReusableText(
                    title: "Motivation",
                    size: 18,
                    weight: FontWeight.w500,
                    color: whiteColor,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              const ReusableText(
                title: "Spoken by:",
                color: textColor,
                weight: FontWeight.w500,
              ),
              InkWell(
                onTap: (){
                  Get.to(const BrowseSpeaker(),transition: Transition.rightToLeft);
                },
                child: const ReusableText(
                  title: "Browse",
                  color: skyColor,
                  weight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: (){
                Get.to(const BrowseSpeaker(),transition: Transition.rightToLeft);
              },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.18,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: whiteColor),
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/p.png"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const ReusableText(
                            title: "QuietWonder",
                            size: 16,
                            weight: FontWeight.w700,
                            color: textColor,
                          ),
                          const SizedBox(height: 10,),
                          const ReusableText(
                            title: "254 Spoken Videos",
                            size: 16,
                            weight: FontWeight.w400,
                            color: textColor,
                          ),

                          const Spacer(),
                          Row(
                            children: [
                              Image.asset("assets/images/Group 4.png"),
                              const SizedBox(width: 10,),
                              const ReusableText(
                                title: "2.3k",
                                size: 16,
                                weight: FontWeight.w400,
                                color: textColor,
                              ),
                              const Spacer(),
                              InkWell(
                                  onTap: (){
                                    Get.to(const ProfileScreen(),transition: Transition.downToUp);
                                  },
                                  child: const Icon(Icons.person,color: textColor,)),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
