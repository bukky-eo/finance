import 'package:finance/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'homescreen.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  // final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: const BoxDecoration(
          // image: DecorationImage(image: AssetImage('images/welcome.jpg')),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // stops: [.5, .3],
              colors: [
                kBackground,
                kLinearOrange,
                Colors.black,
              ],
              tileMode: TileMode.mirror)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
            padding:
                const EdgeInsets.only(top: 45, left: 35, right: 35, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      ScrollIndicator(
                        color: kLightOrange,
                      ),
                      ScrollIndicator(
                        color: Color(0xff303030),
                      ),
                      ScrollIndicator(
                        color: Color(0xff303030),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: screenHeight / 1.6,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/welcome.png'),
                          fit: BoxFit.contain),
                      color: Colors.transparent),
                ),
                const Text(
                  'Make Your \nFinances In One \nPlace!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Your money is safe and growing with us.',
                  style: TextStyle(
                      fontSize: 16,
                      color: kLightText,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(6),
                  child: SlideAction(
                    borderRadius: 35,
                    outerColor: const Color(0xff303030),
                    elevation: 0,
                    innerColor: const Color(0xffFF9255),
                    sliderButtonIcon: const Text(
                      'Get started',
                      style: TextStyle(color: Colors.white),
                    ),
                    textStyle: const TextStyle(color: kLightText, fontSize: 26),
                    text: '>  >  >  >  >',
                    sliderRotate: false,
                    onSubmit: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class ScrollIndicator extends StatelessWidget {
  final Color color;
  const ScrollIndicator({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 6, right: 6, bottom: 1),
      // alignment: Alignment.topLeft,
      height: 6,
      width: 75,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
    );
  }
}
