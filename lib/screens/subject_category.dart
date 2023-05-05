import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spokenapp/constant.dart';
import 'package:spokenapp/widget/reusable_text.dart';

import 'add_subject.dart';

class SubjectCategory extends StatefulWidget {
  final String  title;
  const SubjectCategory({Key? key, required this.title}) : super(key: key);

  @override
  State<SubjectCategory> createState() => _SubjectCategoryState();
}

class _SubjectCategoryState extends State<SubjectCategory> {
  List item = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                       ReusableText(
                        title: widget.title,
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
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const AddSubject(),
                              transition: Transition.downToUp);
                        },
                        child: const Icon(
                          Icons.add_circle,
                          color: textColor,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "What are you looking for?",
                      suffixIcon: const Icon(
                        Icons.search_outlined,
                        size: 30,
                        color: textGreyColor,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: textGreyColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: textGreyColor),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: item.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 80,
                              width: 80,
                              child: Image.asset(
                                "assets/images/jessica-d-vega-J05J9v25l2Y-unsplash.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              child: ReusableText(
                                title:
                                    "Dignity grows with the ability to say no to oneself. This might be a three line quote.",
                                color: textColor,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
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
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    item[index] = !item[index];
                                  });
                                  item[index]
                                      ? showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Dialog(
                                              backgroundColor:
                                                  transparentBlackColor,
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: SizedBox(
                                                height: 100,
                                                width: double.infinity,
                                                child: Center(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: const [
                                                      Icon(
                                                        Icons.favorite,
                                                        color: whiteColor,
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      ReusableText(
                                                        title:
                                                            "Added to your\nRecording Que",
                                                        size: 16,
                                                        color: whiteColor,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        )
                                      : SizedBox();
                                },
                                child: Icon(
                                  item[index]
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: item[index] ? yellowColor : greyColor,
                                ))
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
