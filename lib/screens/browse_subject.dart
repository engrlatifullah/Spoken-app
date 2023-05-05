import 'package:flutter/material.dart';
import 'package:spokenapp/widget/reusable_text.dart';

import '../constant.dart';
import '../model/subject_model.dart';

class BrowseSubject extends StatefulWidget {
  const BrowseSubject({Key? key}) : super(key: key);

  @override
  State<BrowseSubject> createState() => _BrowseSubjectState();
}

class _BrowseSubjectState extends State<BrowseSubject> {
  final List<BrowseModel> personalGroth = [
    BrowseModel(
        image: 'assets/images/im.png',
        title: 'Self-Esteem',
        number: '1.2k',
        checkValue: false),
    BrowseModel(
        image: 'assets/images/nn.png',
        title: 'Motivation',
        number: '1.2k',
        checkValue: false),
    BrowseModel(
        image: 'assets/images/img.png',
        title: 'Self-Care',
        number: '1.2k',
        checkValue: false),
    BrowseModel(
        image: 'assets/images/img.png',
        title: 'Motivation',
        number: '1.2k',
        checkValue: false),
  ];
  final List<BrowseModel> calmDown = [
    BrowseModel(
        image: 'assets/images/im.png',
        title: 'Self-Esteem',
        number: '1.2k',
        checkValue: false),
    BrowseModel(
        image: 'assets/images/nn.png',
        title: 'Motivation',
        number: '1.2k',
        checkValue: false),
    BrowseModel(
        image: 'assets/images/img.png',
        title: 'Self-Care',
        number: '1.2k',
        checkValue: false),
    BrowseModel(
        image: 'assets/images/img.png',
        title: 'Motivation',
        number: '1.2k',
        checkValue: false),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
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
                        Icons.arrow_back_ios,
                        color: textColor,
                      )),
                  const ReusableText(
                    title: "Subject",
                    size: 16,
                    weight: FontWeight.w700,
                    color: textColor,
                  ),
                ],
              ),
            ),
            Expanded(child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: EdgeInsets.only(top: 20),
                  decoration: const BoxDecoration(color: whiteColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      const ReusableText(
                        title: "Personal Growth",
                        size: 18,
                        weight: FontWeight.w700,
                        color: textColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GridView.builder(
                        itemCount: personalGroth.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            childAspectRatio: 0.81),
                        itemBuilder: (_, index) {
                          return Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: whiteColor,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 10,
                                      color: backgroundColor,
                                      offset: Offset(10, 10),
                                      spreadRadius: 5,
                                    ),
                                  ]),
                              child: Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(personalGroth[index]
                                                .image
                                                .toString()))),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        ReusableText(
                                          title: personalGroth[index].title,
                                          size: 16,
                                          weight: FontWeight.w600,
                                          color: textColor,
                                        ),
                                        SizedBox(height: 5,),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            ReusableText(
                                              title: personalGroth[index].number,
                                              size: 16,
                                              weight: FontWeight.w600,
                                              color: textColor,
                                            ),
                                            SizedBox(
                                              height: 40,
                                              width: 40,

                                              child: Checkbox(
                                                  fillColor: MaterialStateProperty.all(textColor),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(20),
                                                    side: BorderSide(color: textColor),
                                                  ),
                                                  value:
                                                  personalGroth[index].checkValue,
                                                  onChanged: (v) {
                                                    setState(() {
                                                      personalGroth[index].checkValue =
                                                      v!;
                                                    });
                                                  }),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ));
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(color: whiteColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ReusableText(
                        title: "Calm Down",
                        size: 18,
                        weight: FontWeight.w700,
                        color: textColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GridView.builder(
                        itemCount: calmDown.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            childAspectRatio: 0.81),
                        itemBuilder: (_, index) {
                          return Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: whiteColor,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 10,
                                      color: backgroundColor,
                                      offset: Offset(10, 10),
                                      spreadRadius: 5,
                                    ),
                                  ]),
                              child: Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(calmDown[index]
                                                .image
                                                .toString()))),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        ReusableText(
                                          title: calmDown[index].title,
                                          size: 16,
                                          weight: FontWeight.w600,
                                          color: textColor,
                                        ),
                                        SizedBox(height: 5,),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            ReusableText(
                                              title: calmDown[index].number,
                                              size: 16,
                                              weight: FontWeight.w600,
                                              color: textColor,
                                            ),
                                            SizedBox(
                                              height: 40,
                                              width: 40,
                                              child: Checkbox(
                                                  fillColor: MaterialStateProperty.all(textColor),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(20),
                                                    side: BorderSide(color: textColor),
                                                  ),
                                                  value:
                                                  calmDown[index].checkValue,
                                                  onChanged: (v) {
                                                    setState(() {
                                                      calmDown[index].checkValue =
                                                      v!;
                                                    });
                                                  }),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ))

          ],
        ),
      ),
    );
  }
}
