import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant.dart';
import '../widget/reusable_text.dart';

class EditCreatorProfile extends StatelessWidget {
  const EditCreatorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            color: whiteColor,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back_ios,color: textColor,),
                ),
                const SizedBox(
                  width: 10,
                ),
                const ReusableText(
                  title: "Edit Profile",
                  size: 16,
                  color: textColor,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {

                  },
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: SvgPicture.asset(
                        "assets/icons/arrow-up-from-arc.svg"),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //Payment Settings
          const ReusableText(
            title: "Payment Settings ",
            size: 16,
            weight: FontWeight.w700,
            color: textColor,
          ),
          const SizedBox(height: 10,),
          //These are also important settings
          const ReusableText(
            title: "These are also important settings",
            size: 13,
            weight: FontWeight.w400,
            color: textGreyColor,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  const [
                    ReusableText(
                      title: "Manage Payment Options",
                      size: 15,
                      weight: FontWeight.w400,
                      color: textColor,
                    ),
                    Icon(Icons.arrow_forward_ios,color: textColor,),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  const [
                    ReusableText(
                      title: "Manage Payment Options",
                      size: 15,
                      weight: FontWeight.w400,
                      color: textColor,
                    ),
                    Icon(Icons.arrow_forward_ios,color: textColor,),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),);
  }
}
