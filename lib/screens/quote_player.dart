import 'package:flutter/material.dart';

import '../constant.dart';

class QuotePlayer extends StatelessWidget {
  const QuotePlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/back.png"),
              ),
            ),child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: blackColor.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/icons/settings.png"),
                ),
                const Spacer(),
                Image.asset("assets/icons/uplaod.png",height: 30,width: 30,),
                const SizedBox(width: 20,),
                const Icon(Icons.favorite_border,color: whiteColor,),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: blackColor.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/icons/person.png"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
