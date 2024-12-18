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
                  height: MediaQuery.of(context).size.height * .25,
                  width: double.infinity,
                 
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
                        height: MediaQuery.of(context).size.height * .08,
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
                right: screenHeight*0.0,
                // top: screenHeight*0.02,
                child: Container(
                  // color: color1,
                  width: screenHeight*0.32,
                  height: screenHeight*0.32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(550),
                    // color: const Color.fromARGB(26, 25, 23, 23),
                  ),
                  
                  child: Stack(children: [
                  
                   Positioned(
                     left:screenHeight*0.07,
                    right: screenHeight*0.02,
                     top: screenHeight*0.05,
                     bottom: screenHeight*0.05,
                   
                    child: Container(
                  //      width: screenHeight*0.28,
                  // height: screenHeight*0.28,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/1.jpg'),
                              fit: BoxFit.cover),
                          color: profile,
                          borderRadius: BorderRadius.circular(555)),
                    ),
                  ),
                  Positioned(
                     left:screenHeight*0.10,
                    right: screenHeight*0.06,
                     top: screenHeight*0.08,
                     bottom: screenHeight*0.08,
                    
                    child: Container(
                        width: screenHeight*0.18,
                  height: screenHeight*0.18,

                      decoration: BoxDecoration(
                          //       image: DecorationImage(
                          // image: AssetImage('assets/images/1.jpg'),fit: BoxFit.cover
                          //       ),
                          color: profile,
                          borderRadius: BorderRadius.circular(522)
                          
                          ),
                    ),
                  ),
                  Positioned(
                    left:screenHeight*0.078,
                    right: screenHeight*0.029,
                     top: screenHeight*0.0,
                     bottom: screenHeight*0.046,

                    child: Container(
                      width: screenHeight*0.35,
                  height: screenHeight*0.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only( bottomLeft: Radius.circular(300),  // Bottom-left corner
                bottomRight: Radius.circular(285),),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/3.png'),
                              fit: BoxFit.fill
                              
                              
                              ),
                        )),
                  ),

                
                  
                  
                  
                  
                    
                  ],
                  
                  
                  
                  
                  
                  ),
                ),
              ),
            ],
          ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                // width:screenHeight*0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "OFFERS",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                          "1 of 82 completed",
                          style: TextStyle(color: TextColor2),
                        ),
                   
                     
                  ],
                ),
              ),
            ),
          SizedBox(height: screenHeight*0.01 ,),
          Container(
              height: screenHeight*0.20,
              width: double.infinity,
              
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: screenHeight * 0.219,
                      height: screenHeight*0.1,
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
                                      fontSize: screenHeight*0.02,
                                      fontWeight: FontWeight.w900),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Expanded(
                                  child: Divider(
                                    color: Color.fromARGB(255, 57, 55, 50),
                                    thickness: 2,
                                    endIndent: 6,
                                  ),
                                ),
                                Stack(
                                  children: [
                                    const CircularProgressIndicator(
                                      color: Colors.red,
                                      strokeWidth: 4.0,
                                    ),
                                    Icon(
                                      Icons.man,
                                      color: Colors.white,
                                      size: screenHeight*0.05,
                                    ),
                                  ],
                                ),

                               
                              ],
                            ),
                            // SizedBox(height: 25,),
                            
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.sports_cricket,
                                      color: Colors.amber,
                                      size: 22,
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
