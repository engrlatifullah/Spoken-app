import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spokenapp/widget/reusable_text.dart';

import '../constant.dart';

class AddRecording extends StatelessWidget {
  const AddRecording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                "assets/images/LADY.png",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset(
                        "assets/icons/arrow_down.svg",
                        color: textColor,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: 60,
                        color: textGreyColor,
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      SvgPicture.asset("assets/icons/Path 71.svg"),
                      SizedBox(
                        height: 29,
                      ),
                      ReusableText(
                        title:
                            "Dignity grows with the ability to say no to oneself. This might be a three line quote and a bit more.",
                        size: 15,textAlign: TextAlign.center,
                      ),SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.close,color: textColor,),
                          SvgPicture.asset("assets/icons/Path 74.svg"),
                          Icon(Icons.done,color: textColor,),
                        ],
                      )
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
