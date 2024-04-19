import 'package:flutter/material.dart';
import 'package:food_app/pages/login_page.dart';
import 'package:food_app/widgets/widgets_support.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: [Colors.blueAccent, Colors.black])),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Text(""),
              ),
              Container(
                margin: EdgeInsets.only(top: 60, left: 20, right: 20),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "images/logo.png",
                        width: MediaQuery.of(context).size.width / 2,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 1.7,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Sign Up ",
                              style: AppWidget.headertextfieldstyle(),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            TextField(
                                decoration: InputDecoration(
                              hintText: "Name",
                              hintStyle: AppWidget.semiboldttextfieldstyle(),
                              prefixIcon: Icon(Icons.person),
                            )),
                            SizedBox(
                              height: 40,
                            ),
                            TextField(
                                decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: AppWidget.semiboldttextfieldstyle(),
                              prefixIcon: Icon(Icons.email),
                            )),
                            SizedBox(
                              height: 40,
                            ),
                            TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle:
                                      AppWidget.semiboldttextfieldstyle(),
                                  prefixIcon: Icon(Icons.password),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Material(
                              elevation: 5,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                padding: EdgeInsets.all(8),
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "REGISTER ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "Already have an account? Sign in",
                        style: AppWidget.semiboldttextfieldstyle(),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
