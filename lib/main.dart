import 'package:flutter/material.dart';
import 'package:valet_app/pages/bank.dart';
import 'package:valet_app/pages/checkout.dart';
import 'package:valet_app/pages/creditcard.dart';
import 'package:valet_app/pages/editprofile.dart';
import 'package:valet_app/pages/history.dart';
import 'package:valet_app/pages/home.dart'; 
import 'package:valet_app/pages/login.dart';
import 'package:valet_app/pages/password.dart';
import 'package:valet_app/pages/payment.dart';
import 'package:valet_app/pages/profile.dart';
import 'package:valet_app/pages/signin.dart';
import 'package:valet_app/pages/welcom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "VALET_APP",
      initialRoute: "/",
      routes: {
        "/": (context) => const Welcom(),
        "/welcom": (context) => const Welcom(),
        "/login": (context) => const Login(),
        "/signin": (context) => const Signin(),
        "/home": (context) => const Home(),  
        "/profile": (context) => const MyProfile(),
        "/checkout":(context) => const Checkout(),
        "/editprofile":(context) => const EditProfile(),
        "/history":(context) => const HistoryPage(),
        "/password":(context) => const Password(),
        "/creditcard":(context) => const CreditCard(),
        "/bank":(context) => const Bank(),
        "/payment":(context) => const Payment(),
      },
    );
  }
}


    