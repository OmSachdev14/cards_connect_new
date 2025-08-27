import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          centerTitle: true,
          title: Title(
            color: Colors.black,
            child: Text(
              "CardConnect",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.cyan,
          ),
          height: 220,

          child: Row(
            children: [
              // this is for image
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 0,
                      left: 10,
                      right: 5,
                      top: 10,
                    ),
                    width: 121,
                    height: 145,

                    // decoration: BoxDecoration(color: Colors.white,('assets/images/Passport Size Photo.jpg')),
                    alignment: Alignment(0, -1),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),

                          child: Image(
                            image: AssetImage(
                              'assets/images/Passport Size Photo.jpg',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5, bottom: 5, right: 2),
                    width: 123,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    //
                    // this is for email we have created a container below image for writing email
                    child: Container(
                      margin: EdgeInsets.only(left: 5, top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.email, size: 18),
                              Text(
                                " Email ID:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Text("om@gmail.com", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // this is for info part
              Container(
                width: 220,
                margin: EdgeInsets.only(
                  bottom: 10,
                  top: 10,
                  left: 5,
                  right: 10,
                ),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    // this for name info
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "Name:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5),
                        Text("Om Sachdev"),
                      ],
                    ),
                    // this for Registration number info
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.school_outlined, size: 18),
                        SizedBox(width: 3),
                        Text(
                          "Reg. No:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5),
                        Text("24BCY216**"),
                      ],
                    ),
                    // this is for mobile number thing
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.call_outlined, size: 18),
                        SizedBox(width: 3),
                        Text(
                          "Mobile No.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5),
                        Text("888951****"),
                      ],
                    ),
                    // this is for blood grp also edited and made a column inside row for valid upto info
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "Blood Group:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5),
                        Text("M+"),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              "Valid Upto:-",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("2024-2028"),
                          ],
                        ),
                      ],
                    ),
                    // this for address info
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Permanent Address:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Sachdev Colony, Street: 101, "),
                            Text("Khatna(M.P)"),
                          ],
                        ),
                      ],
                    ),
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
