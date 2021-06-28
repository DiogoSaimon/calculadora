import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';

import 'memory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);

    return MaterialApp(
      color: Colors.grey,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final Memory memory = Memory();

 var linhaUm = "";

 void add(String digit){
   
   linhaUm = linhaUm + digit;
   
    setState(() {
     memory.applyCommand(digit);
   });

 }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFBF3),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 14.0, right: 24.0),
                        child: AutoSizeText(
                          "3x5",
                          minFontSize: 20.0,
                          maxFontSize: 35.0,
                          maxLines: 1,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Color(0xFF2d474c),
                            fontSize: 35.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 24.0),
                        child: AutoSizeText(
                          memory.value,
                          minFontSize: 20.0,
                          maxFontSize: 90.0,
                          maxLines: 1,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 90.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Flexible(
              flex: 6,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFF2F4A4E),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 12,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                onPressed: () {
                                  add("7");
                                },
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                    fontSize: 60,
                                    color: Color(0xFFFFFBF3),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  add("8");
                                },
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                    fontSize: 60,
                                    color: Color(0xFFFFFBF3),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  add("9");
                                },
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                    fontSize: 60,
                                    color: Color(0xFFFFFBF3),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                onPressed: () {
                                  add("4");
                                },
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                    fontSize: 60,
                                    color: Color(0xFFFFFBF3),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  add("5");
                                },
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                    fontSize: 60,
                                    color: Color(0xFFFFFBF3),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  add("6");
                                },
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                    fontSize: 60,
                                    color: Color(0xFFFFFBF3),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                onPressed: () {
                                  add("1");
                                },
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 60,
                                    color: Color(0xFFFFFBF3),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  add("2");
                                },
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                    fontSize: 60,
                                    color: Color(0xFFFFFBF3),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  add("3");
                                },
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                    fontSize: 60,
                                    color: Color(0xFFFFFBF3),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                onPressed: () {
                                  add("0");
                                },
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                    fontSize: 60,
                                    color: Color(0xFFFFFBF3),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  add(".");
                                },
                                child: Text(
                                  ".",
                                  style: TextStyle(
                                    fontSize: 60,
                                    color: Color(0xFFFFFBF3),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  add("=");
                                  
                                },
                                child: Text(
                                  "=",
                                  style: TextStyle(
                                    fontSize: 60,
                                    color: Color(0xFFFFFBF3),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: VerticalDivider(
                        color: Color(0xFF93c4ca),
                        thickness: 1,
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              add("AC");
                            },
                            child: Icon(
                              Icons.backspace_rounded,
                              size: 40,
                              color: Color(0xFF93C4CA),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              add("%");
                            },
                            child: Text(
                              "%",
                              style: TextStyle(
                                fontSize: 40,
                                color: Color(0xFF93C4CA),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              add("/");
                            },
                            child: Text(
                              "÷",
                              style: TextStyle(
                                fontSize: 40,
                                color: Color(0xFF93C4CA),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              add("*");
                            },
                            child: Text(
                              "×",
                              style: TextStyle(
                                fontSize: 40,
                                color: Color(0xFF93C4CA),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              add("-");
                            },
                            child: Text(
                              "-",
                              style: TextStyle(
                                fontSize: 40,
                                color: Color(0xFF93C4CA),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              add("+");
                            },
                            child: Text(
                              "+",
                              style: TextStyle(
                                fontSize: 40,
                                color: Color(0xFF93C4CA),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {

                        },
                        child: Icon(
                          Icons.arrow_left,
                          size: 24.0,
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          primary: Color(0xff55868c),
                          onPrimary: Color(0xfffffbf3),
                          minimumSize:
                              Size(10.0, MediaQuery.of(context).size.height),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
