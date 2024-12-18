import 'package:aman/color.dart';
import 'package:flutter/material.dart';

class ZoneScreen extends StatefulWidget {
  const ZoneScreen({super.key});

  @override
  State<ZoneScreen> createState() => _ZoneScreenState();
}

class _ZoneScreenState extends State<ZoneScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    bool isTablet = screenWidth > 600;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * .32,
                  width: double.infinity,
                  color: isTablet
                      ? const Color(0xFFF3B63F)
                      : Colors
                          .transparent,  
                  child: Column(
                    children: [
                      // MAIN COLUMN
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Text(
                                "HARDICK ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: screenWidth * 0.06,
                                ),
                              ),
                              Text(
                                "FINDYA",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth * 0.06,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * .09,
                      ),

                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.handshake_outlined,
                                size: 34,
                                color: iconcolor,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "RIGHT HAND BATTER",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth * 0.03,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.label_important,
                                size: 35,
                                color: iconcolor,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "right arm medium",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenWidth * 0.03,
                                    ),
                                  ),
                                  Text(
                                    "fast bowler",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenWidth * 0.03,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: isTablet
                    ? screenHeight * 0.05
                    : screenHeight *
                        0.05,  
                left: 15,
                child: Container(
                  child: Text(
                    "All-Rounder",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.04,
                        color: TextColor2),
                  ),
                ),
              ),
              Positioned(
                right: 8,
                top: 65,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/1.jpg'),
                          fit: BoxFit.cover),
                      color: profile,
                      borderRadius: BorderRadius.circular(555)),
                ),
              ),
              Positioned(
                right: 45,
                top: 100,
                child: Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      //       image: DecorationImage(
                      // image: AssetImage('assets/images/1.jpg'),fit: BoxFit.cover
                      //       ),
                      color: profile,
                      borderRadius: BorderRadius.circular(522)),
                ),
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                    height: 258,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5500),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/3.png'),
                          fit: BoxFit.fill),
                    )),
              ),
              Positioned(
                top: isTablet
                    ? screenHeight * 0.3
                    : screenHeight *
                        0.3,  
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "OFFERS",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: isTablet
                              ? screenHeight * .4
                              : screenHeight * 0.25,
                        ),
                        Row(
                          children: [
                            Text(
                              "1 of 82 completed",
                              style: TextStyle(color: TextColor2),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
              height: MediaQuery.of(context).size.height * .15,
              width: double.infinity,
              
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: screenHeight * 0.20,
                      height: 0,
                      decoration: BoxDecoration(
                          color: listback,
                          borderRadius: BorderRadius.circular(20)),
                     
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "BOOK VENUE",
                                  style: TextStyle(
                                      color: listtext1,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w900),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 1,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: Color.fromARGB(255, 57, 55, 50),
                                    thickness: 2,
                                    endIndent: 6,
                                  ),
                                ),
                                Stack(
                                  children: [
                                    CircularProgressIndicator(
                                      color: Colors.red,
                                      strokeWidth: 4.0,
                                    ),
                                    Icon(
                                      Icons.man,
                                      color: Colors.white,
                                      size: 35,
                                    ),
                                  ],
                                ),

                               
                              ],
                            ),
                            const SizedBox(
                              height: 1,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.sports_cricket,
                                      color: Colors.amber,
                                      size: 25,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  children: [
                                    Text('Earn 500 Points',
                                        style: TextStyle(
                                            color: Colors.yellow,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }
}
