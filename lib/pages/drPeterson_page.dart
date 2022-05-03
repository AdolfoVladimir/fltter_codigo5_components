import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrPetersonPage extends StatelessWidget {
  const DrPetersonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD8DFF6),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 15,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xffF3F6FF),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Iconos
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.format_list_bulleted,
                      color: Color(0xff5B6379),
                      size: 25,
                    ),
                    Icon(
                      Icons.web_asset,
                      color: Color(0xff5B6379),
                      size: 30,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                //Welcome
                const Text("Welcome Back!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff8794C0),
                    ),
                    textAlign: TextAlign.start),
                const SizedBox(
                  height: 10,
                ),
                //Dr. Peterson
                const Text(
                  "Dr. Peterson",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff303954),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                //card principal
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffDAE0F7),
                        blurRadius: 8,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Column(
                      children: [
                        // Parte azul
                        Container(
                          color: const Color(0xff2D88FF),
                          height: 80,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 16),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Appointment Request",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff83B8FF),
                                    ),
                                  ),
                                  Text(
                                    ":",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 3),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(
                                    Icons.access_time_sharp,
                                    color: Colors.white,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "  12 Jan 2020, 8am - 10am",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Color(0xffD5E7FF),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        //Parte blanca
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          height: 155,
                          child: Padding(
                            padding: const EdgeInsets.all(22),
                            child: Column(
                              children: [
                                // Louis
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Louis",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                          Text(
                                            "Patterson",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Icon(
                                      Icons.info_sharp,
                                      color: Color(0xff518BFF),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                // Button accept
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff256FFF),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 55,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            "ACCEPT",
                                            style: TextStyle(
                                              color: Color(0xffC3D7FF),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xffEBEFFA),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 20,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            "DECLINE",
                                            style: TextStyle(
                                              color: Color(0xff95A2C9),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Next Appointments",
                  style: TextStyle(
                    color: Color(0xff97A2C9),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.only(left: 10,right: 30,top: 12,bottom: 12,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Dorothy Nelson",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Color(0xff757B8D),
                              ),),
                            Text("09 Jan 2020, 8am - 10am",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color(0xff97A3C8),
                              ),),
                          ],
                        ),
                      ),
                      Text(
                        ":",
                        style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xff757B8D),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.only(left: 10,right: 30,top: 12,bottom: 12,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Carl Pope",

                              style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Color(0xff757B8D),
                              ),),
                            Text("09 Jan 2020, 11am - 02pm",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color(0xff97A3C8),
                              ),),
                          ],
                        ),
                      ),
                      Text(
                        ":",
                        style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xff757B8D),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.only(left: 10,right: 30,top: 12,bottom: 12,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Ora Murray",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Color(0xff757B8D),
                              ),),
                            Text("10 Jan 2020, 9am - 10am",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color(0xff97A3C8),
                              ),),
                          ],
                        ),
                      ),
                      Text(
                        ":",
                        style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xff757B8D),
                        ),
                      ),
                    ],
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
