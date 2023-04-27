import 'dart:async';

import 'package:donut_delivery/presentation/shooping_screen/shooping_screen.dart';
import 'package:donut_delivery/widgets/category_list.dart';
import 'package:donut_delivery/widgets/stores_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:rive/rive.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  SMITrigger? _shoopingTrigger;

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
                Timer(700.ms, () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const ShoppingScreen(),
                        transitionDuration: 200.ms,
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) =>
                                SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, 1),
                            end: const Offset(0, 0),
                          ).animate(animation),
                          child: child,
                        ),
                      ));
                });
              },
              child: RiveAnimation.asset(
                "assets/shopping.riv",
                artboard: "shopping",
                onInit: (artboard) {
                  final controller = StateMachineController.fromArtboard(
                      artboard, "State Machine 1");
                  artboard.addController(controller!);
                  setState(() {
                    _shoopingTrigger =
                        controller.findSMI("click") as SMITrigger;
                  });
                },
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView(
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
              const CategoryList(),
              const StoresList()
            ],
          ),
        ],
      ),
    );
  }
}
