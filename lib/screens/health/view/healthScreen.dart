import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../bmi_calc/Provider/bmi_provider.dart';

class healthScreen extends StatefulWidget {
  const healthScreen({Key? key}) : super(key: key);

  @override
  State<healthScreen> createState() => _healthScreenState();
}

class _healthScreenState extends State<healthScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? AlignTweenmenu;
  Animation? AlignTweenperson;
  Animation? AlignTweenContainer1;
  Animation? AlignTweenContainer2;
  Animation? AlignTweenContainer3;
  bmiProvider? bt,bf;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    AlignTweenmenu =
        Tween<double>(begin: -2, end: -0.98).animate(animationController!);
    AlignTweenperson =
        Tween<double>(begin: 5, end: 0.9).animate(animationController!);
    AlignTweenContainer1 =
        Tween<double>(begin: -100, end: 0).animate(animationController!);
    AlignTweenContainer2 =
        Tween<double>(begin: 100, end: 0).animate(animationController!);
    AlignTweenContainer3 =
        Tween<double>(begin: 2, end: 0.9).animate(animationController!);

    animationController!.forward();
    animationController!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {

    bt = Provider.of<bmiProvider>(context,listen: true);
    bf = Provider.of<bmiProvider>(context,listen: false);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment(AlignTweenmenu!.value, -0.98),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey.shade100,
                        blurRadius: 3,
                        spreadRadius: 4,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: Icon(Icons.arrow_back_ios_new,
                      size: 20, color: Colors.grey.shade600),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.95),
                child: Text(
                  "BMI Info",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(AlignTweenperson!.value, -0.98),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey.shade100,
                        blurRadius: 3,
                        spreadRadius: 4,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: Icon(Icons.person, color: Colors.grey.shade600),
                ),
              ),
              Align(
                alignment: Alignment(AlignTweenContainer1!.value, -0.75),
                child: Container(
                  height: 100,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey.shade100,
                        blurRadius: 2,
                        spreadRadius: 3,
                        offset: Offset(1, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Your BMI",
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 17),
                      ),
                      Text(
                        "${(bt!.result).toString().substring(0,4)}",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      Text(
                        "Normal Health",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(AlignTweenContainer2!.value, 0),
                child: Container(
                  height: 280,
                  width: 330,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey.shade100,
                        blurRadius: 2,
                        spreadRadius: 3,
                        offset: Offset(1, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "18.5 to 24.9",
                            style: TextStyle(
                                fontSize: 17, color: Colors.grey.shade700),
                          ),
                          Spacer(),
                          Text(
                            "Normal",
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        height: 2,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Text(
                            "Less than 18.5",
                            style: TextStyle(
                                fontSize: 17, color: Colors.grey.shade700),
                          ),
                          Spacer(),
                          Text(
                            "Underweight",
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        height: 2,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Text(
                            "25 to 29.9",
                            style: TextStyle(
                                fontSize: 17, color: Colors.grey.shade700),
                          ),
                          Spacer(),
                          Text(
                            "Overweight",
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        height: 2,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Text(
                            "25 to 29.9",
                            style: TextStyle(
                                fontSize: 17, color: Colors.grey.shade700),
                          ),
                          Spacer(),
                          Text(
                            "Obesity",
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        height: 2,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, AlignTweenContainer3!.value),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 70,
                    width: 260,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blueGrey.shade700,
                          Colors.blueGrey.shade500,
                          Colors.blueGrey.shade400,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Center(
                      child: Text(
                        "Re-Calculate",
                        style: TextStyle(color: Colors.white, fontSize: 23),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
