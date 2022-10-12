import 'package:finance/screens/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff1F1F1F),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 45, left: 35, right: 35, bottom: 15),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Hello, Bukola!',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFAFAFA)),
                ),
                const SizedBox(
                  width: 150,
                ),
                const Icon(
                  Icons.notification_important,
                  size: 35,
                  color: Color(0xffFAFAFA),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: kOrange,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Icon(
                    Icons.image_outlined,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 25, left: 25, right: 25, bottom: 15),
              height: screenHeight / 6,
              decoration: BoxDecoration(
                color: kContainer,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Your Balance',
                        style: TextStyle(color: kLightText, fontSize: 15),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        '\$10.713.95',
                        style: TextStyle(
                          color: kBigText,
                          fontSize: 42,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: kOrange, width: 2, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(6),
                      color: kLinearOrange,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: kOrange,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            ViewAll(
              text: 'Your Portfolio',
              onTap: () {},
            ),
            const SizedBox(
              height: 35,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/first.png',
                  ),
                  Image.asset('images/second.png')
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            ViewAll(
              text: 'Activity',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const View()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ViewAll extends StatelessWidget {
  final String text;
  final Function() onTap;
  const ViewAll({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(color: kBigText, fontSize: 22),
        ),
        InkWell(
          onTap: onTap,
          child: const Text(
            'View All',
            style: TextStyle(color: kOrange, fontSize: 22),
          ),
        )
      ],
    );
  }
}
// ()
