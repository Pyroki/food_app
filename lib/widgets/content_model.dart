import 'package:flutter/material.dart';

class Onboardingcontent {
  String image;
  String title;
  String description;
  Onboardingcontent(
      {required this.image, required this.description, required this.title});
}

List<Onboardingcontent> contents = [
  Onboardingcontent(
      description: "pick your fav food from our menu",
      image: "images/screen1.png",
      title: "Select from our \n  Best Menu"),
  Onboardingcontent(
      description:
          "You can Pay using your parents Money to pay for your food  lol ",
      image: "images/screen2.png",
      title: "Select from  \n Father or Mother or Siblings  "),
  Onboardingcontent(
      description: "Step out the door and collect the food u fool",
      image: "images/screen3.png",
      title: "Pay extra for your doorstep delivery")
];
