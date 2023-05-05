import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spokenapp/constant.dart';
import 'package:spokenapp/screens/creator_center.dart';
import 'package:spokenapp/screens/user_account.dart';
import 'package:spokenapp/screens/user_setting.dart';
import 'package:spokenapp/widget/reusable_text.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
      color: whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset("assets/images/logo.svg"),
          const SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: darkBlueColor,
            ),
            child: ListTile(
              leading: SizedBox(
                height: 25,
                width: 25,
                child: SvgPicture.asset("assets/icons/house.svg",color: whiteColor,),
              ),
              title: const ReusableText(
                title: "Home",size: 16,color: whiteColor,weight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 10,),
          ListTile(
            onTap: (){
              Get.to(const UserAccount(),transition: Transition.rightToLeft);
            },
            leading: SizedBox(
              height: 25,
              width: 25,
              child: SvgPicture.asset("assets/icons/setting.svg",),
            ),
            title: const ReusableText(
              title: "Settings",size: 16,weight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 10,),
          ListTile(
            onTap: (){
              Get.to(const UserSetting(),transition: Transition.rightToLeft);
            },
            leading: SizedBox(
              height: 25,
              width: 25,
              child: SvgPicture.asset("assets/icons/user.svg",),
            ),
            title: const ReusableText(
              title: "Account",size: 16,weight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          const SizedBox(height: 10,),
          const Divider(),
          const SizedBox(height: 10,),
          const ReusableText(title: "Creators",size: 15,weight: FontWeight.w400,color: textGreyColor),
          const SizedBox(height: 10,),
          ListTile(
            contentPadding: EdgeInsets.zero,
            onTap: (){
              Get.to(const CreatorCenter(),transition: Transition.downToUp);
            },
            leading: SizedBox(
              height: 25,
              width: 25,
              child: SvgPicture.asset("assets/icons/album-collection-circle-user.svg",color: textColor,),
            ),
            title: const ReusableText(
              title: "Creator Center",size: 16,weight: FontWeight.w400,
            ),
          ),

        ],
      ),
    );
  }
}
