import 'package:flutter/material.dart';

class Welcom extends StatelessWidget {
  const Welcom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8C5ACC),
      body: Stack(
        children: [
          
          Column(
            children: [
              const SizedBox(height: 60),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: CircleAvatar(
                    radius: 32,
                    backgroundColor: const Color(0xffCDFFB6),
                    child: const Text(
                      'V',
                      style: TextStyle(
                        fontSize: 36,
                        fontFamily: 'Inter-Italic',
                        fontWeight: FontWeight.w500,
                        color: Color(0xff7F26F1),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.63,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffF6F5F5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: const CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('images/4917cabcc6dabc7b40768170cdcb940c0bf6e0f9.jpg'),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        
                          Icon(Icons.directions_car_filled_outlined, size: 35, color: Colors.black),
                          
                          Text("VALET",style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Fenix'),)
                        ],
                      ),
                      
                    ),
                  ),
                 
                  const SizedBox(height: 38),
                  Text(
                    "Parking Lma T3oz",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff6A11DA),
                      fontFamily: 'Inter'
                    ),
                  ),
                  const SizedBox(height: 55),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff624881),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("LOGIN",
                    style: TextStyle(
                      color: Colors.white
                      ,fontFamily: 'Inter'
                      ,fontSize: 20
                      , ),),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signin');
                    },
                    child: const Text(
                      "SIGNIN",
                      style: TextStyle(
                        color: Color(0xff9B8DAD),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                        fontSize: 17,

                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
