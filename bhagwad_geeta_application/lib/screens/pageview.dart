import 'package:flutter/material.dart';

class Pageview extends StatefulWidget {
  const Pageview({super.key});

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    int i = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: Text("page"),
      ),
      body: PageView.builder(
        controller: pageController,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            child: Text("Hello world"),
          );
        },
      ),
    );
  }
}
