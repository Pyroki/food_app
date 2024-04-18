import 'package:flutter/material.dart';
import 'package:food_app/components/food_card.dart';
import 'package:food_app/pages/detail_page.dart';
import 'package:food_app/widgets/widgets_support.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool icecream = false, pizza = false, salad = false, burger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hello Monish ,",
                        style: AppWidget.boldtextfieldstyle(),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Delicious Food ",
                    style: AppWidget.headertextfieldstyle(),
                  ),
                  Text(
                    "Discover and Get Great Food ",
                    style: AppWidget.lighttextfieldstyle(),
                  ),

                  // Second row
                  const SizedBox(
                    height: 20,
                  ),

                  showItems(),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          FoodCard(
                            imagepath: 'images/salad2.png',
                            text1: "Veggie Taco Mash",
                            text2: "Fresh and Healthy",
                            price: "₹150",
                          ),
                          SizedBox(
                            width: 5,
                            height: 10,
                          ),
                          FoodCard(
                            imagepath: 'images/salad3.png',
                            text1: "Mix Veg Salad",
                            text2: "Fresh and Healthy",
                            price: "₹235",
                          ),
                          FoodCard(
                            imagepath: 'images/salad.png',
                            text1: "Veggie Taco Mash",
                            text2: "Fresh and Healthy",
                            price: "₹150",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          FoodCard(
                            imagepath: 'images/salad2.png',
                            text1: "Veggie Taco Mash",
                            text2: "Fresh and Healthy",
                            price: "₹150",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        verti(),
                        verti(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget showItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = true;
              pizza = false;
              salad = false;
              burger = false;
            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: icecream ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/ice-cream.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: icecream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = false;
              pizza = true;
              salad = false;
              burger = false;
            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: pizza ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/pizza.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = false;
              pizza = false;
              salad = true;
              burger = false;
            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: salad ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/salad.png",
                height: 50,
                width: 50,
                color: salad ? Colors.white : Colors.black,
                // fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = false;
              pizza = false;
              salad = false;
              burger = true;
            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: burger ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/burger.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget verti() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
        elevation: 7,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(7),
          child: Row(
            children: [
              Image.asset(
                "images/salad2.png",
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width / 3,
                    child: Text(
                      "Super Cool Salad ",
                      style: AppWidget.boldtextfieldstyle(),
                    ),
                  ),
                  Text(
                    "Grab A Alate",
                    style: AppWidget.lighttextfieldstyle(),
                  ),
                  Text(
                    "₹367",
                    style: AppWidget.semiboldttextfieldstyle(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
