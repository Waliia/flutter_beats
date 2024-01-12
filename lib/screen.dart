import 'package:flutter/material.dart';
import 'package:flutter_beats/color.dart';
import 'package:flutter_beats/widget.dart';

class Screen extends StatefulWidget {
  Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool day = false;
  void changeMood() {
    setState(() {
      day = !day;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: day
                    ? [bgColorLightTop, bgColorLightBottom]
                    : [bgColorDarkTop, bgColorDarkBottom],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: changeMood,
                            child: Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              child: day
                                  ? Image.asset("assets/moon.png")
                                  : Image.asset("assets/sun.png"),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Intro(day: day),
                    ],
                  ),
                ),
                Container(
                  height: Height * 0.2,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: btnGradient,
                      border:
                          Border.all(width: 5, color: const Color(0xff555555)),
                      boxShadow: day
                          ? [
                              BoxShadow(
                                  color: Color(0xff090010).withOpacity(0.7),
                                  offset: Offset(10, 10),
                                  blurRadius: 20,
                                  spreadRadius: 4),
                              BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                offset: Offset(-10, -10),
                                blurRadius: 20,
                                spreadRadius: 4,
                              )
                            ]
                          : [
                              BoxShadow(
                                  color: Color(0xff090010).withOpacity(0.7),
                                  offset: Offset(10, 10),
                                  blurRadius: 20,
                                  spreadRadius: 4),
                              BoxShadow(
                                color: themeColorLight.withOpacity(0.5),
                                offset: Offset(-10, -10),
                                blurRadius: 20,
                                spreadRadius: 4,
                              )
                            ]),
                  child: const Center(
                    child: Beats(),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '3.07',
                            style: TextStyle(
                              fontSize: 15,
                              color: day ? textColorDark : textColorLight,
                            ),
                          ),
                          Container(
                            width: Width * 0.45,
                            height: 7,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                        Color(0xff474747),
                                        Color(0xff141414),
                                      ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter)),
                                ),
                                FractionallySizedBox(
                                  widthFactor: 0.3,
                                  heightFactor: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              themeColorDark,
                                              themeColorLight
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '1.85',
                            style: TextStyle(
                              fontSize: 15,
                              color: day ? textColorDark : textColorLight,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          VolumeButton(
                            btnRadius: Height * 0.04,
                            childRadius: 0.034, day: day,
                            text: "assets/previous.png",
                            //   day: day,
                          ),
                          Container(
                            width: Height * 0.06,
                            height: Height * 0.06,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [Colors.black, bgColorDarkTop],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                )),
                            child: Center(
                              child: Container(
                                width: Height * 0.052,
                                height: Height * 0.052,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff2f2934),
                                          Color(0xff483A51),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight)),
                                child: Center(
                                  child: Text(
                                    '6',
                                    style: TextStyle(
                                      color: themeColorLight,
                                      fontSize: 23,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          VolumeButton(
                            btnRadius: Height * 0.04,
                            childRadius: 0.034, day: day,
                            text: 'assets/minus.png',
                            //   day: day,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Repeat',
                          style: TextStyle(
                            fontFamily: 'Montseerat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: day ? textColorDark : textColorLight,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PlayButton(
                        btnRadius: Height * 0.07,
                        childRadius: Height * 0.062,
                        day: day,
                        text: "assets/previous.png"),
                    PlayButton(
                        btnRadius: Height * 0.1,
                        childRadius: Height * 0.092,
                        day: day,
                        text: "assets/play.png"),
                    PlayButton(
                      btnRadius: Height * 0.07,
                      childRadius: Height * 0.062,
                      day: day,
                      text: "assets/next.png",
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
