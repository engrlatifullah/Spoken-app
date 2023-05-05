import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spokenapp/screens/subject_category.dart';
import 'package:spokenapp/screens/subject_recording_list.dart';
import 'package:spokenapp/widget/reusable_text.dart';

import '../constant.dart';
import '../model/affirm_model.dart';
import '../model/recording_model.dart';

class RecordingCategory extends StatefulWidget {
  const RecordingCategory({Key? key}) : super(key: key);

  @override
  State<RecordingCategory> createState() => _RecordingCategoryState();
}

class _RecordingCategoryState extends State<RecordingCategory> {
  final List<RecordingModel> titles = [
    RecordingModel(image: 'assets/images/im.png', title: 'Self-Esteem',recorded: 84, unRecorded: 284, ),
    RecordingModel(image: 'assets/images/nn.png', title: 'Motivation', recorded: 84, unRecorded: 284,),
    RecordingModel(image: 'assets/images/img.png', title: 'Self-Care', recorded: 84, unRecorded: 284,),

  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [

          SizedBox(height: 20,),
          const ReusableText(
            title: "Personal Growth",
            size: 16,
            weight: FontWeight.w700,
            color: textColor,
          ),
          const SizedBox(height: 20,),
          ...titles.map((e){
            return InkWell(
              onTap: (){
                // Get.to( SubjectCategory(title: e.title,),transition: Transition.rightToLeft);
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:  DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(e.image))),
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ReusableText(
                          title: e.title,
                          size: 18,
                          weight: FontWeight.w500,
                          color: whiteColor,
                        ),
                        const SizedBox(height: 10,),
                        InkWell(
                          onTap: (){
                            Get.to( const SubjectRecordingList(),transition: Transition.rightToLeft);
                          },
                          child: Container(
                            width: 85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: whiteColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: 5,),
                                ReusableText(
                                  title: e.unRecorded.toString(),
                                  size: 18,
                                  weight: FontWeight.w500,
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: yellowColor,
                                  ),
                                  child: ReusableText(
                                    title: e.recorded.toString(),
                                    size: 18,
                                    weight: FontWeight.w500,
                                    color: whiteColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );

          }).toList(),
        ],
      ),
    );
  }
}
