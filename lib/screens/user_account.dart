import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../constant.dart';
import '../widget/reusable_text.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  bool faceId = true;
  bool autoLock = true;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
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
                        Icons.arrow_back_ios,
                        color: textColor,
                      )),
                  const ReusableText(
                    title: "Account",
                    size: 16,
                    weight: FontWeight.w700,
                    color: textColor,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Column(
              children:  [
                //Account Settings
                const ReusableText(
                  title: "Account Settings ",
                  size: 16,
                  weight: FontWeight.w700,
                  color: textColor,
                ),
                const SizedBox(height: 10,),
                //These are the most important settings
                const ReusableText(
                  title: "These are the most important settings",
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
                        children:  [
                          const ReusableText(
                            title: "Use FaceID to sign in",
                            size: 15,
                            weight: FontWeight.w400,
                            color: textColor,
                          ),
                          FlutterSwitch(value: faceId,
                            height: 30,
                            width: 60,
                            activeColor: transparentColor,
                            inactiveColor: transparentColor,
                            activeToggleColor: blueColor,
                            activeSwitchBorder:  Border.all(
                                color: blueColor
                            ),
                            inactiveToggleColor: textGreyColor,inactiveSwitchBorder: Border.all(
                                color: textGreyColor
                            ),
                            onToggle: (bool value) {
                              setState(() {
                                faceId = value;
                              });
                            },

                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          const ReusableText(
                            title: "Auto-Lock security",
                            size: 15,
                            weight: FontWeight.w400,
                            color: textColor,
                          ),
                          FlutterSwitch(value: autoLock,
                            height: 30,
                            width: 60,
                            activeColor: transparentColor,
                            inactiveColor: transparentColor,
                            activeToggleColor: blueColor,
                            activeSwitchBorder:  Border.all(
                                color: blueColor
                            ),
                            inactiveToggleColor: textGreyColor,inactiveSwitchBorder: Border.all(
                                color: textGreyColor
                            ),
                            onToggle: (bool value) {
                              setState(() {
                                autoLock = value;
                              });
                            },

                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  const [
                          ReusableText(
                            title: "Clothing",
                            size: 15,
                            weight: FontWeight.w400,
                            color: textColor,
                          ),
                          Icon(Icons.arrow_forward_ios,color: textColor,),
                        ],
                      ),

                      const SizedBox(height: 30,),
                      //Personalization  Settings
                      const ReusableText(
                        title: "Personalization  Settings ",
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

                      SizedBox(height: 30,),
                      //Manage Personalizations  Options
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  const [
                          ReusableText(
                            title: "Manage Personalizations  Options",
                            size: 15,
                            weight: FontWeight.w400,
                            color: textColor,
                          ),
                          Icon(Icons.arrow_forward_ios,color: textColor,),
                        ],
                      ),

                      SizedBox(height: 20,),
                      //Manage Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  const [
                          ReusableText(
                            title: "Manage Password",
                            size: 15,
                            weight: FontWeight.w400,
                            color: textColor,
                          ),
                          Icon(Icons.arrow_forward_ios,color: textColor,),
                        ],
                      ),


                      const SizedBox(height: 30,),
                      //Billing & Subscrition  Settings
                      const ReusableText(
                        title: "Billing & Subscrition  Settings ",
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

                      SizedBox(height: 30,),
                      //Manage Subscription   Options
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  const [
                          ReusableText(
                            title: "Manage Subscription   Options",
                            size: 15,
                            weight: FontWeight.w400,
                            color: textColor,
                          ),
                          Icon(Icons.arrow_forward_ios,color: textColor,),
                        ],
                      ),

                      SizedBox(height: 20,),
                      //Manage Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  const [
                          ReusableText(
                            title: "Manage Billing",
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
            )
          ],
        ),
      ),
    );
  }
}
