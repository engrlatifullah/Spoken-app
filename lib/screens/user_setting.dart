import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../constant.dart';
import '../widget/reusable_text.dart';

class UserSetting extends StatefulWidget {
  const UserSetting({Key? key}) : super(key: key);

  @override
  State<UserSetting> createState() => _UserSettingState();
}

class _UserSettingState extends State<UserSetting> {
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
                    title: "Settings",
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
                const ReusableText(
                  title: "General Settings ",
                  size: 16,
                  weight: FontWeight.w700,
                  color: textColor,
                ),
                const SizedBox(height: 10,),
                const ReusableText(
                  title: "These are the most important settings ",
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
                      const SizedBox(height: 20,),
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
                      const SizedBox(height: 20,),
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
                      //Notification & Widget  Settings
                      const ReusableText(
                        title: "Notification & Widget  Settings ",
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

                      const SizedBox(height: 30,),
                      //Manage Notification Options
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  const [
                          ReusableText(
                            title: "Manage Notification Options",
                            size: 15,
                            weight: FontWeight.w700,
                            color: textColor,
                          ),
                          Icon(Icons.arrow_forward_ios,color: textColor,),
                        ],
                      ),

                      const SizedBox(height: 20,),
                      //Manage Widget Options
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  const [
                          ReusableText(
                            title: "Manage Widget Options",
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
