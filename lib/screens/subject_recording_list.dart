import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:spokenapp/screens/recording_option_sheet.dart';
import '../constant.dart';
import '../widget/reusable_text.dart';

class SubjectRecordingList extends StatefulWidget {
  const SubjectRecordingList({Key? key}) : super(key: key);

  @override
  State<SubjectRecordingList> createState() => _SubjectRecordingListState();
}

class _SubjectRecordingListState extends State<SubjectRecordingList> {
  bool recorded = true;
  bool unRecorded = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // header file
            Container(
              padding: const EdgeInsets.all(20),
              color: whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: textColor,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      const ReusableText(
                        title: "Self Esteem Recordings",
                        size: 16,
                        color: textColor,
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(
                          "assets/icons/sliders.svg",
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            recorded = true;
                            unRecorded = false;
                          });
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: SvgPicture.asset(
                                "assets/icons/recording.svg",
                                color: recorded ? textColor : textGreyColor,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ReusableText(
                              title: "Recorded",
                              weight:
                                  recorded ? FontWeight.bold : FontWeight.w400,
                              color: recorded ? textColor : textGreyColor,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                          height: 20,
                          child: VerticalDivider(
                            thickness: 1,
                            color: textColor,
                          )),
                      InkWell(
                        onTap: () {
                          setState(() {
                            unRecorded = true;
                            recorded = false;
                          });
                        },
                        child: Row(
                          children: [
                            SizedBox(
                                height: 20,
                                width: 20,
                                child: SvgPicture.asset(
                                  "assets/icons/unrecording.svg",
                                  color: unRecorded ? textColor : textGreyColor,
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            ReusableText(
                              title: "UnRecorded",
                              weight: unRecorded
                                  ? FontWeight.bold
                                  : FontWeight.w400,
                              color: unRecorded ? textColor : textGreyColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
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
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            recorded
                ?
            Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height * 0.25,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 7),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: whiteColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 80,
                                          width: 80,
                                          child: Image.asset(
                                            "assets/images/jessica-d-vega-J05J9v25l2Y-unsplash.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Spacer(),
                                        SizedBox(
                                          height: 80,
                                          width: 80,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/hh.png",
                                                fit: BoxFit.cover,
                                              ),
                                              const Icon(
                                                Icons.play_arrow,
                                                size: 30,
                                                color: whiteColor,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const ReusableText(
                                            title:
                                                "Dignity grows with the ability to say no to oneself. This might be a three line quote.",
                                            color: textColor,
                                          ),
                                          const Spacer(),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.play_arrow,
                                                color: textColor,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const ReusableText(
                                                title: "8.53",
                                                color: textColor,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              SizedBox(
                                                height: 20,
                                                width: 20,
                                                child: SvgPicture.asset(
                                                    "assets/icons/Group 4.svg",
                                                    color: textColor),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const ReusableText(
                                                title: "126",
                                                color: textColor,
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              SizedBox(
                                                height: 20,
                                                width: 20,
                                                child: SvgPicture.asset(
                                                  "assets/icons/thumbs-up.svg",
                                                  color: textColor,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const ReusableText(
                                                title: "32.5k",
                                                color: textColor,
                                              ),
                                              const Spacer(),
                                              const Icon(
                                                Icons.favorite,
                                                color: yellowColor,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                :
            Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height * 0.25,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 7),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: whiteColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 80,
                                          width: 80,
                                          child: Image.asset(
                                            "assets/images/jessica-d-vega-J05J9v25l2Y-unsplash.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Spacer(),
                                        InkWell(
                                          onTap: (){
                                            RecordingOptionSheet(context);
                                          },
                                          child: DottedBorder(
                                            color: greyColor,
                                            dashPattern: [6, 3, 2, 3],
                                            borderType: BorderType.RRect,
                                            radius: Radius.circular(5),
                                            child: Container(
                                              height: 80,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                color: lightGreyColor,
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child:  Icon(Icons.play_arrow,size: 30,color: greyColor,)

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const ReusableText(
                                            title:
                                                "Dignity grows with the ability to say no to oneself. This might be a three line quote.",
                                            color: textColor,
                                          ),
                                          const Spacer(),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.play_arrow,
                                                color: textColor,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const ReusableText(
                                                title: "8.53",
                                                color: textColor,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              SizedBox(
                                                height: 20,
                                                width: 20,
                                                child: SvgPicture.asset(
                                                    "assets/icons/Group 4.svg",
                                                    color: textColor),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const ReusableText(
                                                title: "126",
                                                color: textColor,
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              SizedBox(
                                                height: 20,
                                                width: 20,
                                                child: SvgPicture.asset(
                                                  "assets/icons/thumbs-up.svg",
                                                  color: textColor,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const ReusableText(
                                                title: "32.5k",
                                                color: textColor,
                                              ),
                                              const Spacer(),
                                              const Icon(
                                                Icons.favorite,
                                                color: yellowColor,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
