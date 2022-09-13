import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/const/color.dart';
import 'package:google_clone/widget/mobile/mobile_footer.dart';
import 'package:google_clone/widget/search.dart';
import 'package:google_clone/widget/translation_buttons.dart';
import 'package:google_clone/widget/web/search_buttons.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ),
        title: SizedBox(
          width: size.width * 0.34,
          child: const DefaultTabController(
              length: 2,
              child: TabBar(
                  labelColor: blueColor,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: blueColor,
                  tabs: [
                    Tab(
                      text: 'All',
                    ),
                    Tab(
                      text: 'Images',
                    )
                  ])),
        ),
        actions: [
          IconButton(
              icon:
                  SvgPicture.asset('assets/more-apps.svg', color: primaryColor),
              onPressed: () {}),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12).copyWith(
              right: 10,
            ),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xff1A73EB),
              child: const Text(
                'Sign in',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.25),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Search(),
                      SizedBox(height: 20),
                      SizedBox(height: 20),
                      TranslationButtons(),
                    ],
                  ),
                  const MobileFooter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
