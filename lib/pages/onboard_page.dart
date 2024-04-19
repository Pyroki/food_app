import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/widgets/content_model.dart';
import 'package:food_app/widgets/widgets_support.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  int currentindex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        PageView.builder(
            controller: _controller,
            itemCount: contents.length,
            onPageChanged: (int index) {
              setState(() {
                currentindex = index;
              });
            },
            itemBuilder: (_, i) {
              return Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Image.asset(
                      contents[i].image,
                      height: 450,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(contents[i].title,
                        style: AppWidget.semiboldttextfieldstyle()),
                    SizedBox(
                      height: 40,
                    ),
                    Text(contents[i].description,
                        style: AppWidget.lighttextfieldstyle()),
                  ],
                ),
              );
            }),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              List.generate(contents.length, (index) => buildDot(index))
            ],
          ),
        )
      ],
    ));
  }
}
