import 'package:flutter/material.dart';
import 'package:valet_app/shared/arrwedicin2.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),

            // صورة المستخدم
            Center(
              child: Container(
                child: Image(image: AssetImage('images/Vector(3).png')),
              ),
            ),

            const SizedBox(height: 8),

            const Center(
              child: Text(
                "User Name",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  color: Color(0xff270158),
                ),
              ),
            ),

            const SizedBox(height: 60),
 
            buildSettingItem(
              title: "Edit Profile",
              iconPath: "images/Vector.png",
              route: "/editprofile",
            ),
            buildSettingItem(
              title: "Change Password",
              iconPath: "images/Vector(1).png",
              route: "/password",
            ),
            buildSettingItem(
              title: "History",
              iconPath: "images/Vector(2).png",
              route: "/history",
            ),
 
            const SizedBox(height: 200),
 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/welcom');
                },
                child: const Text(
                  "LOGOUT",
                  style: TextStyle(
                    color: Color(0xff6A11DA),
                    fontFamily: 'Inter',
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSettingItem({
    required String title,
    required String iconPath,
    required String route,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          Padding(
            padding: const EdgeInsets.only(left: 34),  
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0xff6A11DA),
                fontFamily: 'Inter',
                fontSize: 13.89,
              ),
            ),
          ),
          const SizedBox(height: 8),

          Row(
            children: [
              Image.asset(
                iconPath,
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 10),
 
              Container(
                width: 299,
                height: 33,
                padding: const EdgeInsets.only(left: 16, right: 8),  
                decoration: BoxDecoration(
                  color: const Color(0xffF6F5F5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ArrowIcon2(routeName: route),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
