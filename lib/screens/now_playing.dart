import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spokenapp/screens/quote_tab.dart';
import 'package:spokenapp/screens/recording_category.dart';

import '../constant.dart';
import '../widget/reusable_text.dart';
import 'affirm_tab.dart';

class NowPlaying extends StatefulWidget {
  final int  index;
  final bool  changeScreen;
  const NowPlaying({Key? key,  required this.index, required this.changeScreen}) : super(key: key);

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  final List<String> tabsTitle = ["Quotes", "Affirm", "Faith", "Add Advice"];
  late int _currentIndex ;
  late final List _pages;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = widget.index ?? 0;
    final List<Widget> pages = [const Quote(), widget.changeScreen ? RecordingCategory() : Affirm(),Container(),Container(),];
  _pages = pages;
  }
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  _currentIndex == 1 ?
              Row(
                children:  [
                  const SizedBox(width: 20,),
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back_ios,color: textColor,)),
                  const SizedBox(width: 20,),
                  const ReusableText(
                    title: "Now Playing",
                    color: textColor,
                    weight: FontWeight.w500,
                  ),
                  const Spacer(),
                  InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.more_vert,color: textColor,)),
                  const SizedBox(width: 20,),
                ],
              )
                      :
                  Row(
                    children:  [
                      const SizedBox(width: 20,),
                      const ReusableText(
                        title: "Now Playing",
                        color: textColor,
                        weight: FontWeight.w500,
                      ),
                      Spacer(),
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset("assets/icons/gear.svg"),
                      ),
                      const SizedBox(width: 20,),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(tabsTitle.length, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.28,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: _currentIndex == index
                                  ? darkBlueColor
                                  : backgroundColor,
                            ),
                            child: ReusableText(
                              title: tabsTitle[index],
                              size: 12,
                              color: _currentIndex == index ? whiteColor : textColor,
                              weight: FontWeight.w700,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
            Expanded(child: SingleChildScrollView(child: _pages[_currentIndex])),
          ],
        ),
      ),
    );
  }
}
