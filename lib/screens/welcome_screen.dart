import 'package:donut_delivery/widgets/category_list.dart';
import 'package:donut_delivery/widgets/stores_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:rive/rive.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  SMITrigger? _shoopingTrigger;
  SMIBool? _liked;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          SizedBox(
            height: 150,
            width: 70,
            child: GestureDetector(
              onTap: () {
                _shoopingTrigger?.fire();
              },
              child: RiveAnimation.asset(
                "assets/shopping.riv",
                stateMachines: const ["shopping"],
                artboard: "shopping",
                onInit: (artboard) {
                  final controller =
                      StateMachineController.fromArtboard(artboard, "shopping");
                  artboard.addController(controller!);
                  setState(() {
                    _shoopingTrigger =
                        controller.findInput("click") as SMITrigger;
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28.0),
            child: SizedBox(
              height: 150,
              width: 80,
              child: GestureDetector(
                onTap: () {
                  _liked?.value = true;
                },
                child: RiveAnimation.asset(
                  "assets/heart.riv",
                  stateMachines: const ["State Machine 1"],
                  artboard: "heart",
                  onInit: (artboard) {
                    final controller = StateMachineController.fromArtboard(
                        artboard, "State Machine 1");
                    artboard.addController(controller!);
                    setState(() {
                      _liked = controller.findInput("like") as SMIBool;
                    });
                  },
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text.rich(TextSpan(
                        text: "Hi,  ",
                        style: TextStyle(fontSize: 32),
                        children: [
                          TextSpan(
                              text: "Jhon!",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ])),
                    Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: Text(
                        "Delivery To 430 Customers",
                      ),
                    )
                  ]),
            ),
          ),
          CategoryList(),
          const StoresList()
        ],
      ),
    );
  }
}
