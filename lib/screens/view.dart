import 'package:finance/helpers/constants.dart';

import 'package:flutter/material.dart';

import 'new.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  String dropdowvalue = 'Weekly';
  var items = ['Weekly', 'Monthly', 'Daily'];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff1F1F1F),
      body: Padding(
        padding: const EdgeInsets.only(top: 35, bottom: 25),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: kContainer,
                          borderRadius: BorderRadius.circular(25)),
                      child: const Icon(
                        Icons.navigate_before,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: kContainer,
                          borderRadius: BorderRadius.circular(25)),
                      child: const Icon(
                        Icons.drag_indicator,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: kOrange,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  Icons.image_outlined,
                  size: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Apple Inc.',
                style: TextStyle(
                  color: kBigText,
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                '(AAPL)',
                style: TextStyle(
                  color: kBigText,
                  fontSize: 20,
                  // fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  // height: screenHeight / 2,
                  width: screenWidth,
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 15, bottom: 5),
                  decoration: const BoxDecoration(
                    color: kContainer,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                            color: kSecondContainer,
                            borderRadius: BorderRadius.circular(12)),
                        child: DropdownButton(
                          focusColor: kSecondContainer,
                          elevation: 0,
                          dropdownColor: kSecondContainer,
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(color: kLightText),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdowvalue = newValue!;
                            });
                          },
                          value: dropdowvalue,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: kOrange,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(child: Image.asset('images/line.png')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '10',
                            style: TextStyle(color: kLightText, fontSize: 22),
                          ),
                          const Text(
                            '11',
                            style: TextStyle(color: kLightText, fontSize: 22),
                          ),
                          Image.asset(
                            'images/date.png',
                          ),
                          const Text(
                            '13',
                            style: TextStyle(color: kLightText, fontSize: 22),
                          ),
                        ],
                      )
                    ],
                  )),
              Container(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 15, bottom: 5),
                decoration: BoxDecoration(
                    color: kSecondContainer,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          'Available for buying',
                          style: TextStyle(color: kLightText, fontSize: 15),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          '\$8.423',
                          style: TextStyle(
                            color: kBigText,
                            fontSize: 42,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    // Container(
                    //   padding: const EdgeInsets.all(6),
                    //   child: SlideAction(
                    //     borderRadius: 35,
                    //     outerColor: const Color(0xff303030),
                    //     elevation: 0,
                    //     innerColor: const Color(0xffFF9255),
                    //     sliderButtonIcon: const Text(
                    //       'Buy',
                    //       style: TextStyle(color: Colors.white),
                    //     ),
                    //     textStyle: const TextStyle(
                    //         color: kLightText, fontSize: 26),
                    //     text: '   >  >  >  >',
                    //     sliderRotate: false,
                    //     onSubmit: () {
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: (context) => const New()));
                    //     },
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SalesData {
  final double date;
  final double price;
  SalesData({required this.date, required this.price});
}
