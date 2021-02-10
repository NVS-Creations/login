import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool sign = false;
  bool newuser = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(92, 63, 155, 1),
                Color.fromRGBO(43, 166, 223, 1),
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "IT'S ME",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (newuser == false)
                        ? Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Container(
                              width: MediaQuery.of(context).size.width * .8,
                              height: MediaQuery.of(context).size.height * .7,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "SIGN IN",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .6,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                241, 241, 241, 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              disabledBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              hintText: "EMAIL"),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .6,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                241, 241, 241, 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              disabledBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              hintText: "PASSWORD"),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          print(sign);
                                          setState(() {
                                            if (sign) {
                                              sign = !sign;
                                            } else {
                                              sign = !sign;
                                            }
                                          });
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .4,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                colors: [
                                                  Color.fromRGBO(
                                                      43, 166, 223, 1),
                                                  Color.fromRGBO(
                                                      92, 63, 155, 1),
                                                ],
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          child: Center(
                                            child: (sign == false)
                                                ? Text("SIGN IN")
                                                : CircularProgressIndicator(
                                                    backgroundColor:
                                                        Colors.white,
                                                  ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "or sign in with",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .4,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                241, 241, 241, 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Facebook",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Container(
                              width: MediaQuery.of(context).size.width * .8,
                              height: MediaQuery.of(context).size.height * .7,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "SIGN UP",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .6,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                241, 241, 241, 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              disabledBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              hintText: "EMAIL"),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .6,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                241, 241, 241, 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              disabledBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              hintText: "PASSWORD"),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .6,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                241, 241, 241, 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              disabledBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              hintText: "CONFIRM PASSWORD"),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (sign) {
                                              sign = !sign;
                                            } else {
                                              sign = !sign;
                                            }
                                          });
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .4,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                colors: [
                                                  Color.fromRGBO(
                                                      43, 166, 223, 1),
                                                  Color.fromRGBO(
                                                      92, 63, 155, 1),
                                                ],
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          child: Center(
                                            child: (sign == false)
                                                ? Text("SIGN UP")
                                                : CircularProgressIndicator(
                                                    backgroundColor:
                                                        Colors.white,
                                                  ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "or sign up with",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .4,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                241, 241, 241, 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Facebook",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (newuser == false)
                        ? Text(
                            "New One?",
                          )
                        : Text("Already have account ?")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (newuser) {
                              newuser = !newuser;
                            } else {
                              newuser = !newuser;
                            }
                          });
                        },
                        child: (newuser == false)
                            ? Text(
                                "Sign Up Here",
                              )
                            : Text("Sign In Here")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
