import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const MyApp(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  dynamic c = Colors.white;
  dynamic t = Colors.white;
  dynamic a = Colors.white;
  dynamic b = Colors.white;
  String kg = '0';
  double m = 0;
  double ans = 0;
  double cm = 0;
  bool tap = false;
  double weight = 0;
  double height = 0;
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: const Color(0xff090E21),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            c = const Color(0xffEB1555);
                            t = const Color(0xffEB1555);
                            a = const Color(0xffFFFFFF);
                            b = const Color(0xffFFFFFF);
                          });
                        },
                        child: TweenAnimationBuilder(
                            duration: const Duration(milliseconds: 1000),
                            tween: Tween<double>(begin: 400, end: 200),
                            builder: (context, val, widget) {
                              return Transform.translate(
                                transformHitTests: true,
                                offset: Offset(val, 0),
                                child: Container(
                                  height: 200,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff1D1E33),
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(Icons.female_sharp,
                                          size: 150, color: c),
                                      Text(
                                        "Female",
                                        style:
                                            TextStyle(color: t, fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            c = const Color(0xffFFFFFF);
                            t = const Color(0xffFFFFFF);
                            a = const Color(0xffEB1555);
                            b = const Color(0xffEB1555);
                          });
                        },
                        child: TweenAnimationBuilder(
                          tween: Tween<double>(begin: -400, end: -200),
                          duration: const Duration(milliseconds: 1000),
                          builder: (context, val, widget) {
                            return Transform.translate(
                              offset: Offset(val, 0),
                              child: Container(
                                height: 200,
                                width: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xff3B3C4D),
                                ),
                                child: Column(
                                  children: [
                                    Icon(Icons.male_sharp, size: 150, color: a),
                                    Text(
                                      "Male",
                                      style: TextStyle(color: b, fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                ),
                Center(
                  child: Container(
                    height: 200,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff1D1E33),
                    ),
                    child: TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: const Duration(milliseconds: 1000),
                        builder: (context, val, widget) {
                          return Transform.scale(
                            scale: val,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "HEIGHT",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                const Padding(padding: EdgeInsets.all(10)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${cm.toInt()}",
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                    const Text(
                                      "\ncm",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ],
                                ),
                                Slider(
                                  min: 0,
                                  max: 200,
                                  divisions: 200,
                                  value: cm,
                                  onChanged: (value) {
                                    setState(() {
                                      cm = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                    ),
                    Center(
                      child: TweenAnimationBuilder(
                        tween: Tween<double>(begin: 400, end: 200),
                        duration: const Duration(milliseconds: 1000),
                        builder: (context, val, widget) {
                          return Transform.translate(
                            offset: Offset(val, 0),
                            child: Container(
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xff1D1E33),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "Weight",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  Text("${weight.toInt()}",
                                      style: const TextStyle(
                                          fontSize: 35,
                                          color: Color(0xffFFFFFF))),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      FloatingActionButton(
                                        backgroundColor:
                                            const Color(0xffEB1555),
                                        onPressed: () {
                                          setState(() {
                                            weight++;
                                          });
                                        },
                                        child: const Text(
                                          "+",
                                          style: TextStyle(
                                              fontSize: 26,
                                              color: Color(0xff1D1E33)),
                                        ),
                                      ),
                                      FloatingActionButton(
                                        backgroundColor:
                                            const Color(0xffEB1555),
                                        onPressed: () {
                                          setState(() {
                                            if (weight.toInt() <= 0) {
                                              weight = 0;
                                            } else {
                                              weight--;
                                            }
                                          });
                                        },
                                        child: const Text(
                                          "-",
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Color(0xff1D1E33)),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                    ),
                    Center(
                      child: TweenAnimationBuilder(
                        tween: Tween<double>(begin: -400, end: -200),
                        duration: const Duration(milliseconds: 1000),
                        builder: (context, val, widget) {
                          return Transform.translate(
                            offset: Offset(val, 0),
                            child: Container(
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xff1D1E33),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "Age",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  Text(
                                    "$age",
                                    style: const TextStyle(
                                        fontSize: 35, color: Color(0xffFFFFFF)),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      FloatingActionButton(
                                        backgroundColor:
                                            const Color(0xffEB1555),
                                        onPressed: () {
                                          setState(() {
                                            age++;
                                          });
                                        },
                                        child: const Text(
                                          "+",
                                          style: TextStyle(
                                              fontSize: 26,
                                              color: Color(0xff1D1E33)),
                                        ),
                                      ),
                                      FloatingActionButton(
                                        backgroundColor:
                                            const Color(0xffEB1555),
                                        onPressed: () {
                                          if (age <= 2) {
                                            age = 2;
                                          } else {
                                            age--;
                                          }
                                        },
                                        child: const Text(
                                          "-",
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Color(0xff1D1E33)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Container(
              height: 50,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff1D1E33),
              ),
              alignment: Alignment.center,
              child: Text(
                "${ans.toInt()}",
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(
                      () {
                        m = cm / 100;
                        ans = int.parse(kg) / (m * m);
                      },
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 390,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      color: const Color(0xffEB1555),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Calculate",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff090E21),
    );
  }
}
