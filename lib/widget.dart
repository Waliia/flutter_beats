import 'package:flutter/material.dart';
import 'package:flutter_beats/color.dart';

class Intro extends StatelessWidget {
  final bool day;
  const Intro({Key? key, required this.day}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Column(
        children: [
          Text(
            'Design By Wali Azhar',
            style: TextStyle(
              fontSize: 12,
              // fontFamily: 'Montseerat',
              fontFamily: 'Montseerat',
              fontWeight: FontWeight.bold,
              color: day ? textColorDark : textColorLight,
            ),
          ),
          Spacer(),
          Text(
            'C L O S E R',
            style: TextStyle(
                fontFamily: 'Montseerat',
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: day ? textColorDark : textColorLight),
          ),
          // SizedBox(
          //   height: 8,
          // ),
          Text(
            'Sean Paul',
            style: TextStyle(
                fontFamily: 'Montseerat',
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: day ? textColorDark : textColorLight),
          )
        ],
      ),
    );
  }
}

class Beats extends StatelessWidget {
  const Beats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: 5,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), gradient: beatGradient),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.03,
          width: 5,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), gradient: beatGradient),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: 5,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), gradient: beatGradient),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: 5,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), gradient: beatGradient),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: 5,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), gradient: beatGradient),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: 5,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), gradient: beatGradient),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: 5,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), gradient: beatGradient),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class VolumeButton extends StatelessWidget {
  final double btnRadius, childRadius;
  final String text;
  final bool day;

  VolumeButton(
      {Key? key,
      required this.btnRadius,
      required this.childRadius,
      required this.day,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: btnRadius,
      height: btnRadius,
      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: day
                ? [Colors.white70, Colors.black12]
                : [themeColorLight.withOpacity(0.1), Colors.black],
          ),
          boxShadow: day
              ? [
                  BoxShadow(
                      color: Color(0xff090010).withOpacity(0.6),
                      offset: Offset(5, 5),
                      blurRadius: 10,
                      spreadRadius: 3),
                  BoxShadow(
                      color: Color(0xff88B9BC),
                      offset: Offset(-5, -5),
                      blurRadius: 10,
                      spreadRadius: 2),
                ]
              : [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.7),
                      offset: Offset(5, 5),
                      blurRadius: 10,
                      spreadRadius: 3),
                  BoxShadow(
                      color: themeColorLight.withOpacity(0.2),
                      offset: Offset(-5, -5),
                      blurRadius: 10,
                      spreadRadius: 2),
                ]),
      child: Center(
        child: Container(
          width: childRadius,
          height: childRadius,
          decoration:
              BoxDecoration(gradient: btnGradient, shape: BoxShape.circle),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(13),
              child: Image.asset(
                text,
                color: themeColorLight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  final double btnRadius, childRadius;
  final String text;
  final bool day;

  PlayButton(
      {Key? key,
      required this.btnRadius,
      required this.childRadius,
      required this.day,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: btnRadius,
      height: btnRadius,
      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: day
                ? [Colors.white70, Colors.black12]
                : [themeColorLight.withOpacity(0.050), Colors.black],
          ),
          boxShadow: day
              ? [
                  BoxShadow(
                      color: Color(0xff090010).withOpacity(0.6),
                      offset: Offset(8, 8),
                      blurRadius: 15,
                      spreadRadius: 3),
                  BoxShadow(
                      color: Color(0xff88B9BC),
                      offset: Offset(-8, -8),
                      blurRadius: 15,
                      spreadRadius: 3),
                ]
              : [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.8),
                      offset: Offset(8, 8),
                      blurRadius: 15,
                      spreadRadius: 3),
                  BoxShadow(
                      color: themeColorLight.withOpacity(0.2),
                      offset: Offset(-8, -8),
                      blurRadius: 15,
                      spreadRadius: 3),
                ]),
      child: Center(
        child: Container(
          width: childRadius,
          height: childRadius,
          decoration:
              BoxDecoration(gradient: btnGradient, shape: BoxShape.circle),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(13),
              child: Image.asset(
                text,
                color: themeColorLight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
