import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spokenapp/constant.dart';
import 'package:spokenapp/widget/reusable_text.dart';

import 'add_recording.dart';

void RecordingOptionSheet(BuildContext context){
  showModalBottomSheet(context: context,
    backgroundColor: whiteColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(10),),
    ),
    builder: (BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 3,
            margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.4),
            color: textGreyColor,
          ),
          const SizedBox(height: 20,),
          const Icon(Icons.play_arrow,size: 40,color: textColor,),
          const SizedBox(height: 10,),
          const Center(child: ReusableText(title: "Add Recording",size: 16,color: textColor,)),
          const SizedBox(height: 30,),
          InkWell(
            onTap: (){
              Get.to(const AddRecording(),transition: Transition.downToUp);
            },
            child: Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset("assets/icons/video.svg"),
                ),
                const SizedBox(width: 10,),
                const ReusableText(title: "Make Recording",color: textColor,),
              ],
            ),
          ),
          const SizedBox(height: 5,),
          const Divider(),
          const SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: SvgPicture.asset("assets/icons/upload.svg"),
              ),
              const SizedBox(width: 10,),
              const ReusableText(title: "Upload Video",color: textColor,),
            ],
          ),
          const SizedBox(height: 5,),


        ],
      ),
    );
  }, );
}