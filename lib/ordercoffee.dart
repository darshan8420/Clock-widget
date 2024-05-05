import 'package:flutter/material.dart';
import 'package:taskze/clockwidget.dart';
import 'package:taskze/coffeeordered/coffeeordered.dart';
import 'package:taskze/digitalclock.dart';
import 'package:taskze/dottedroundcontainer.dart';
import 'package:taskze/forkCanvas.dart';
import 'package:taskze/greetingTimewisget.dart';
import 'package:taskze/discovernewrest.dart';

class OrderCoffee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(22, 20, 33, 100),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClockWidget(),
            SizedBox(height: 70),
            DigitalClock(),
            SizedBox(height: 230),
            GreetingTimeWidget(),
            SizedBox(height: 100),
            DottedRoundContainer(),
            SizedBox(height: 200),
            ForkCanvas(),
            SizedBox(height: 20),
            CoffeeOrdered(),
            SizedBox(height: 20),
            DiscoverNew(),
            // WaveCircleWidget(), // Uncomment this line if needed
          ],
        ),
      ),
    );
  }
}
