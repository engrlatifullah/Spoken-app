import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant.dart';
import '../widget/reusable_text.dart';

class AddSubject extends StatelessWidget {
  const AddSubject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              color: whiteColor,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset("assets/icons/arrow down.svg"),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const ReusableText(
                    title: "Add Subject",
                    size: 16,
                    color: textColor,
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset(
                          "assets/icons/arrow-up-from-arc.svg"),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ReusableText(
                    title: "Affirmation",
                    size: 16,
                    color: textColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: "Enter text …",
                      filled: true,
                      fillColor: whiteColor,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: textGreyColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: textGreyColor),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Author (Optional) …",
                      filled: true,
                      fillColor: whiteColor,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: textGreyColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: textGreyColor),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ReusableText(
                    title: "Category",
                    size: 16,
                    color: textColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title: "Affirm / Self-Esteem",
                    size: 16,
                    color: textGreyColor,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ReusableText(
                        title: "Image",
                        size: 16,
                        color: textGreyColor,
                      ),
                      const ReusableText(
                        title: "Browse",
                        size: 16,
                        color: skyColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/nr.png"),
                      ),
                    ),

                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
