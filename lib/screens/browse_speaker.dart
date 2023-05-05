import 'package:flutter/material.dart';

import '../constant.dart';
import '../widget/reusable_text.dart';

class BrowseSpeaker extends StatefulWidget {
  const BrowseSpeaker({Key? key}) : super(key: key);

  @override
  State<BrowseSpeaker> createState() => _BrowseSpeakerState();
}

class _BrowseSpeakerState extends State<BrowseSpeaker> {
  final List popularValue = [
    false,
    false,
    false,
  ];
  final List quietValue = [
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    title: "Speaker",
                    size: 16,
                    weight: FontWeight.w700,
                    color: textColor,
                  ),
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(height: 20,),
                    const ReusableText(
                      title: "Popular",
                      size: 16,
                      weight: FontWeight.w700,
                      color: textColor,
                    ),
                    SizedBox(height: 20,),
                    ListView.builder(
                      itemCount: popularValue.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.18,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: whiteColor),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.18,
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/p.png"),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 20,),
                                    const ReusableText(
                                      title: "QuietWonder",
                                      size: 16,
                                      weight: FontWeight.w700,
                                      color: textColor,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const ReusableText(
                                      title: "254 Spoken Videos",
                                      size: 16,
                                      weight: FontWeight.w400,
                                      color: textColor,
                                    ),
                                    const Spacer(),
                                    const SizedBox(
                                    ),
                                    Row(

                                      children: [
                                        Image.asset("assets/images/Group 4.png"),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const ReusableText(
                                          title: "2.3k",
                                          size: 16,
                                          weight: FontWeight.w400,
                                          color: textColor,
                                        ),
                                        const Spacer(),
                                        SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: Checkbox(
                                              fillColor: MaterialStateProperty.all(
                                                  textColor),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(20),
                                                side: BorderSide(color: textColor),
                                              ),
                                              value: popularValue[index],
                                              onChanged: (v) {
                                                setState(() {
                                                  popularValue[index] =
                                                  v!;
                                                });
                                              }),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },),

                    SizedBox(height: 20,),
                    const ReusableText(
                      title: "Quiet Voices / ASMR",
                      size: 16,
                      weight: FontWeight.w700,
                      color: textColor,
                    ),
                    SizedBox(height: 20,),
                    ListView.builder(
                      itemCount: quietValue.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: whiteColor),
                          child: Row(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height * 0.18,
                                width: MediaQuery.of(context).size.width * 0.4,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      topLeft: Radius.circular(10)),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/images/p.png"),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20,),
                                      const ReusableText(
                                        title: "QuietWonder",
                                        size: 16,
                                        weight: FontWeight.w700,
                                        color: textColor,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const ReusableText(
                                        title: "254 Spoken Videos",
                                        size: 16,
                                        weight: FontWeight.w400,
                                        color: textColor,
                                      ),
                                      const Spacer(),
                                      const SizedBox(
                                      ),
                                      Row(

                                        children: [
                                          Image.asset("assets/images/Group 4.png"),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const ReusableText(
                                            title: "2.3k",
                                            size: 16,
                                            weight: FontWeight.w400,
                                            color: textColor,
                                          ),
                                          const Spacer(),
                                          SizedBox(
                                            height: 40,
                                            width: 40,
                                            child: Checkbox(
                                                fillColor: MaterialStateProperty.all(
                                                    textColor),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(20),
                                                  side: BorderSide(color: textColor),
                                                ),
                                                value: quietValue[index],
                                                onChanged: (v) {
                                                  setState(() {
                                                    quietValue[index] =
                                                    v!;
                                                  });
                                                }),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
