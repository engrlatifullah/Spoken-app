import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spokenapp/screens/now_playing.dart';

import '../constant.dart';
import '../widget/reusable_text.dart';
import 'edit_creator_profile.dart';

class CreatorCenter extends StatelessWidget {
  const CreatorCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
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
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.close,
                        color: textColor,
                      )),
                  SizedBox(width: 5,),
                  const ReusableText(
                    title: "Creator Center",
                    size: 16,
                    weight: FontWeight.w700,
                    color: textColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ReusableText(
                        title: "Profile",
                        color: textColor,
                        weight: FontWeight.w500,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const EditCreatorProfile(), transition: Transition.rightToLeft);
                        },
                        child: const ReusableText(
                          title: "Edit",
                          color: skyColor,
                          weight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage("assets/images/p.png"),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                ReusableText(
                                  title: "QuietWonder",
                                  size: 24,
                                  color: textColor,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ReusableText(
                                  title: "San Francisco, USA",
                                  size: 16,
                                  color: textColor,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                ReusableText(
                                  title: "2k",
                                  size: 18,
                                  color: textColor,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                ReusableText(
                                  title: "Friends",
                                  size: 18,
                                  color: textColor,
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                ReusableText(
                                  title: "10",
                                  size: 18,
                                  color: textColor,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                ReusableText(
                                  title: "Photos",
                                  size: 18,
                                  color: textColor,
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                ReusableText(
                                  title: "89",
                                  size: 18,
                                  color: textColor,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                ReusableText(
                                  title: "Comments",
                                  size: 18,
                                  color: textColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ReusableText(
                    title: "Content",
                    color: textColor,
                    weight: FontWeight.w500,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(
                        const NowPlaying(index: 1,changeScreen: false,)
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: whiteColor,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: SvgPicture.asset(
                                      "assets/icons/quote-left-solid.svg",color: textColor,),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      ReusableText(
                                        title: "Quotes & Subjects",
                                      ),
                                      SizedBox(height: 5,),
                                      ReusableText(
                                        title: "Select our quotes or make your own",
                                        color: textGreyColor,weight: FontWeight.w400,size: 12,
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              ReusableText(
                                title: "3.5k",
                              ),
                              SizedBox(width: 5,),
                              Icon(Icons.arrow_forward_ios,color: textGreyColor,)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(
                          const NowPlaying(index: 1,changeScreen: true,)
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: whiteColor,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: SvgPicture.asset(
                                      "assets/icons/Group 4.svg",color: blackColor,),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:  [
                                      Row(
                                        children: [
                                          const ReusableText(
                                            title: "Spoken Recordings",
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 2),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: yellowColor,
                                            ),
                                            child: const ReusableText(
                                              title: "23",
                                              color: whiteColor,
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 5,),
                                      const ReusableText(
                                        title: "Your Recordings based on Selected Quotes",
                                        color: textGreyColor,weight: FontWeight.w400,size: 12,
                                      ),
                                    ],
                                  ),
                                ),


                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              ReusableText(
                                title: "3.5k",
                              ),
                              SizedBox(width: 5,),
                              Icon(Icons.arrow_forward_ios,color: textGreyColor,)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
