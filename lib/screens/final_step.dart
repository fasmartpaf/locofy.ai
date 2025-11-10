import 'package:RizzApp/theme/tokens.dart';
import 'package:RizzApp/widgets/stretch_wrap.dart';
import 'package:flutter/material.dart';

class FinalStep extends StatelessWidget {
  const FinalStep({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 962,
            padding: const EdgeInsets.only(
              top: 60,
              left: padding24,
              right: padding24,
              bottom: 45,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                transform: GradientRotation(3.14 * 0.49),
                colors: [
                  Color(0xFFFCF2F9),
                  Color(0xFFFCF2F9),
                  Color(0xFFFFF7EE),
                ],
                stops: [0, 0.51, 1],
              ),
            ),
            child: Flex(
              spacing: 405,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              direction: Axis.vertical,
              children: [
                SizedBox(
                  width: 382,
                  height: 396,
                  child: Flex(
                    spacing: 18,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    direction: Axis.vertical,
                    children: [
                      Flex(
                        spacing: gap10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        direction: Axis.vertical,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: double.infinity,
                            height: height40,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x33003135),
                                  blurRadius: 10,
                                  spreadRadius: 0,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.all(
                                Radius.circular(br10),
                              ),
                            ),
                            child: const Flex(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              direction: Axis.horizontal,
                              children: [
                                SizedBox(
                                  width: 322,
                                  height: 25,
                                  child: Image(
                                    image: AssetImage(
                                      'assets/Frame-1597883686@2x.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 382,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Flex(
                          spacing: gap15,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          direction: Axis.vertical,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(
                              width: 106,
                              height: 30,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Final Step',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0.73,
                                    letterSpacing: -0.3,
                                    color: black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Flex(
                                spacing: gap15,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                direction: Axis.vertical,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(
                                    width: 23,
                                    height: height16,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Sex',
                                        style: TextStyle(
                                          fontSize: fs14,
                                          fontFamily: 'Poppins',
                                          height: 1.14,
                                          letterSpacing: -0.3,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Flex(
                                      spacing: gap10,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      direction: Axis.horizontal,
                                      children: [
                                        Container(
                                          height: height40,
                                          padding: const EdgeInsets.only(
                                            left: padding10,
                                            right: padding10,
                                          ),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(br10),
                                            ),
                                            color: neutralTrueWhite,
                                          ),
                                          child: const Flex(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            direction: Axis.horizontal,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flex(
                                                spacing: gap10,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                direction: Axis.horizontal,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    'Male',
                                                    style: TextStyle(
                                                      fontSize: fs14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.14,
                                                      letterSpacing: -0.3,
                                                      color: black,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: width16,
                                                    height: height16,
                                                    child: Image(
                                                      image: AssetImage(
                                                        'assets/famicons-male-outline@2x.png',
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: height40,
                                          padding: const EdgeInsets.only(
                                            left: padding10,
                                            right: padding10,
                                          ),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(br10),
                                            ),
                                            color: neutralTrueWhite,
                                          ),
                                          child: const Flex(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            direction: Axis.horizontal,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flex(
                                                spacing: gap10,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                direction: Axis.horizontal,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    'Female',
                                                    style: TextStyle(
                                                      fontSize: fs14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.14,
                                                      letterSpacing: -0.3,
                                                      color: black,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: width16,
                                                    height: height16,
                                                    child: Image(
                                                      image: AssetImage(
                                                        'assets/famicons-female-outline@2x.png',
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: height40,
                                          padding: const EdgeInsets.only(
                                            left: padding10,
                                            right: padding10,
                                          ),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(br10),
                                            ),
                                            color: neutralTrueWhite,
                                          ),
                                          child: const Flex(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            direction: Axis.horizontal,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flex(
                                                spacing: gap10,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                direction: Axis.horizontal,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    'Non-Binary',
                                                    style: TextStyle(
                                                      fontSize: fs14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.14,
                                                      letterSpacing: -0.3,
                                                      color: black,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: width16,
                                                    height: height16,
                                                    child: Image(
                                                      image: AssetImage(
                                                        'assets/ph-gender-nonbinary@2x.png',
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Flex(
                                spacing: gap15,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                direction: Axis.vertical,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(
                                    width: 27,
                                    height: height16,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Age',
                                        style: TextStyle(
                                          fontSize: fs14,
                                          fontFamily: 'Poppins',
                                          height: 1.14,
                                          letterSpacing: -0.3,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Flex(
                                      spacing: gap10,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      direction: Axis.horizontal,
                                      children: [
                                        Container(
                                          height: height40,
                                          padding: const EdgeInsets.only(
                                            left: padding10,
                                            right: padding10,
                                          ),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(br10),
                                            ),
                                            color: neutralTrueWhite,
                                          ),
                                          child: const Flex(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            direction: Axis.horizontal,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flex(
                                                spacing: gap10,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                direction: Axis.horizontal,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    '13-17',
                                                    style: TextStyle(
                                                      fontSize: fs14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.14,
                                                      letterSpacing: -0.3,
                                                      color: black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: height40,
                                          padding: const EdgeInsets.only(
                                            left: padding10,
                                            right: padding10,
                                          ),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(br10),
                                            ),
                                            color: neutralTrueWhite,
                                          ),
                                          child: const Flex(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            direction: Axis.horizontal,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flex(
                                                spacing: gap10,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                direction: Axis.horizontal,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    '18-24',
                                                    style: TextStyle(
                                                      fontSize: fs14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.14,
                                                      letterSpacing: -0.3,
                                                      color: black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: height40,
                                          padding: const EdgeInsets.only(
                                            left: padding10,
                                            right: padding10,
                                          ),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(br10),
                                            ),
                                            color: neutralTrueWhite,
                                          ),
                                          child: const Flex(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            direction: Axis.horizontal,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flex(
                                                spacing: gap10,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                direction: Axis.horizontal,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    '25-34',
                                                    style: TextStyle(
                                                      fontSize: fs14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.14,
                                                      letterSpacing: -0.3,
                                                      color: black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: height40,
                                          padding: const EdgeInsets.only(
                                            left: padding10,
                                            right: padding10,
                                          ),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(br10),
                                            ),
                                            color: neutralTrueWhite,
                                          ),
                                          child: const Flex(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            direction: Axis.horizontal,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flex(
                                                spacing: gap10,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                direction: Axis.horizontal,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    '35-44',
                                                    style: TextStyle(
                                                      fontSize: fs14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.14,
                                                      letterSpacing: -0.3,
                                                      color: black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: height40,
                                          padding: const EdgeInsets.only(
                                            left: padding10,
                                            right: padding10,
                                          ),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(br10),
                                            ),
                                            color: neutralTrueWhite,
                                          ),
                                          child: const Flex(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            direction: Axis.horizontal,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flex(
                                                spacing: gap10,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                direction: Axis.horizontal,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    '45+',
                                                    style: TextStyle(
                                                      fontSize: fs14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.14,
                                                      letterSpacing: -0.3,
                                                      color: black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Flex(
                                spacing: gap15,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                direction: Axis.vertical,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(
                                    width: 108,
                                    height: height16,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Dating Intention',
                                        style: TextStyle(
                                          fontSize: fs14,
                                          fontFamily: 'Poppins',
                                          height: 1.14,
                                          letterSpacing: -0.3,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    alignment: AlignmentDirectional.center,
                                    child: StretchWrap(
                                      spacing: gap10,
                                      runSpacing: gap10,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      alignment: WrapAlignment.center,
                                      children: [
                                        Container(
                                          height: height40,
                                          padding: const EdgeInsets.only(
                                            left: padding10,
                                            right: padding10,
                                          ),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(br10),
                                            ),
                                            color: neutralTrueWhite,
                                          ),
                                          child: const Flex(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            direction: Axis.horizontal,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flex(
                                                spacing: gap10,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                direction: Axis.horizontal,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    'Relationship',
                                                    style: TextStyle(
                                                      fontSize: fs14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.14,
                                                      letterSpacing: -0.3,
                                                      color: black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: height40,
                                          padding: const EdgeInsets.only(
                                            left: padding10,
                                            right: padding10,
                                          ),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(br10),
                                            ),
                                            color: neutralTrueWhite,
                                          ),
                                          child: const Flex(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            direction: Axis.horizontal,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flex(
                                                spacing: gap10,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                direction: Axis.horizontal,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    'Casual',
                                                    style: TextStyle(
                                                      fontSize: fs14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.14,
                                                      letterSpacing: -0.3,
                                                      color: black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: height40,
                                          padding: const EdgeInsets.only(
                                            left: padding10,
                                            right: padding10,
                                          ),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(br10),
                                            ),
                                            color: neutralTrueWhite,
                                          ),
                                          child: const Flex(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            direction: Axis.horizontal,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flex(
                                                spacing: gap10,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                direction: Axis.horizontal,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    'Fun',
                                                    style: TextStyle(
                                                      fontSize: fs14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.14,
                                                      letterSpacing: -0.3,
                                                      color: black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: height40,
                                          padding: const EdgeInsets.only(
                                            left: padding10,
                                            right: padding10,
                                          ),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(br10),
                                            ),
                                            color: neutralTrueWhite,
                                          ),
                                          child: const Flex(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            direction: Axis.horizontal,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flex(
                                                spacing: gap10,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                direction: Axis.horizontal,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    'I’m in a relationsgip',
                                                    style: TextStyle(
                                                      fontSize: fs14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.14,
                                                      letterSpacing: -0.3,
                                                      color: black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      transform: GradientRotation(3.14 * 0.25),
                      colors: [Color(0xFFA955F5), Color(0xFFEA489B)],
                      stops: [0, 1],
                    ),
                  ),
                  child: ElevatedButton(
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1,
                        letterSpacing: -0.3,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      foregroundColor: neutralTrueWhite,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(br10)),
                      ),
                      padding: EdgeInsets.only(
                        top: 0,
                        left: padding10,
                        right: padding10,
                        bottom: 0,
                      ),
                      fixedSize: Size(382, 56),
                      minimumSize: Size(382, 56),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
