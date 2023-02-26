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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Weight",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  const Padding(padding: EdgeInsets.all(10)),
                                  TextField(
                                    decoration:
                                        const InputDecoration(hintText: " "),
                                    onChanged: (l) {
                                      kg = l;
                                    },
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 15),
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Age",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  Padding(padding: EdgeInsets.all(10)),
                                  TextField(
                                    decoration: InputDecoration(hintText: " "),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
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
              width: 350,
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
/*
              Row(
                children: [
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 400, end: 170),
                      duration: const Duration(milliseconds: 1000),
                      builder: (context, val, weidget) {
                        return Transform.translate(
                          offset: Offset(val, 0),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(10),
                            height: 150,
                            width: 150,
                            color: Colors.grey.withOpacity(0.2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "weight",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "${i.toInt()}",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          if (i > 0) {
                                            i--;
                                          }
                                        });
                                      },
                                      mini: true,
                                      backgroundColor:
                                          Colors.grey.withOpacity(0.2),
                                      child: const Icon(Icons.remove),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          i += 2;
                                          kg = i;
                                        });
                                        print("KG $kg");
                                      },
                                      mini: true,
                                      backgroundColor:
                                          Colors.grey.withOpacity(0.5),
                                      child: const Icon(Icons.add),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: -400, end: -170),
                      duration: const Duration(milliseconds: 1000),
                      builder: (context, val, widget) {
                        return Transform.translate(
                          offset: Offset(val, 0),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(10),
                            height: 150,
                            width: 150,
                            color: Colors.grey.withOpacity(0.2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "age",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "${j.toInt()}",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          if (j > 0) {
                                            j--;
                                          }
                                        });
                                      },
                                      mini: true,
                                      backgroundColor:
                                          Colors.grey.withOpacity(0.2),
                                      child: const Icon(Icons.remove),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          j++;
                                        });
                                      },
                                      mini: true,
                                      backgroundColor:
                                          Colors.grey.withOpacity(0.5),
                                      child: const Icon(Icons.add),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                child: Text(
                  "${ans.toInt()}  $f ",
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    m = cm / 100;
                    ans = kg / (m * m);
                  });
                  print("ANS $ans");
                  if (ans < 18.5) {
                    f = "underweight range";
                  } else if (ans > 18.5 && ans < 24.9) {
                    f = "heathy weight range";
                  } else if (ans > 25 && ans < 29.9) {
                    f = "overweight range";
                  } else if (ans >= 30) {
                    f = "obese range";
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(10),
                  height: 80,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(50),
                          right: Radius.circular(50))),
                  child: TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 1),
                      duration: const Duration(milliseconds: 1000),
                      builder: (context, val, widget) {
                        return Transform.scale(
                          scale: val,
                          child: const Text(
                            "CALCULATE",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
 */
