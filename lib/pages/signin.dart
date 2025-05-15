import 'package:flutter/material.dart';
import 'package:valet_app/shared/arrowicon.dart';
import 'package:valet_app/shared/textfield.dart';
class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading:const MyArrowIcon(),
       ),
       body: 
       
       SizedBox(
        height: double.infinity,
        width: double.infinity,
         child: Column(
          children: [
            Container(
              child: Column(
                children: [ 
                  const CircleAvatar(
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
                  SizedBox(
                    height:15 ,
                  ),
                  Text("LOGIN",style: TextStyle(color: Colors.black,fontFamily: 'Inter',fontSize: 32),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),


           Container(
              width: MediaQuery.of(context).size.height * 0.80,
               padding: EdgeInsets.symmetric(horizontal: 24),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text(
                    'First Name',
                    style: TextStyle(
                     fontSize: 13.68,
                     color: Color(0xff6A11DA),
                    fontFamily: 'Inter',
                     ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    MyTextField(textInputTypeee: TextInputType.text, isPassword:false),
                     SizedBox(
                      height: 3,
                    ),
                    Text(
                    'Last Name',
                    style: TextStyle(
                     fontSize: 13.68,
                     color: Color(0xff6A11DA),
                    fontFamily: 'Inter',
                     ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    MyTextField(textInputTypeee: TextInputType.text, isPassword:false),
                     SizedBox(
                      height: 3,
                      ),
                      Text(
                    'Email',
                    style: TextStyle(
                     fontSize: 13.68,
                     color: Color(0xff6A11DA),
                    fontFamily: 'Inter',
                     ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    MyTextField(textInputTypeee: TextInputType.emailAddress, isPassword:false),
                     SizedBox(
                      height: 3,
                      ),
                        Text(
                    'Phon Number',
                    style: TextStyle(
                     fontSize: 13.68,
                     color: Color(0xff6A11DA),
                    fontFamily: 'Inter',
                     ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    MyTextField(textInputTypeee: TextInputType.emailAddress, isPassword:false),
                     SizedBox(
                      height: 3,
                      ),
                      Text(
                    'Password',
                    style: TextStyle(
                     fontSize: 13.68,
                     color: Color(0xff6A11DA),
                    fontFamily: 'Inter',
                     ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    MyTextField(textInputTypeee: TextInputType.text, isPassword:true),
                     SizedBox(
                      height: 3,
                      ),
                      Text(
                    'Confirm Password',
                    style: TextStyle(
                     fontSize: 13.68,
                     color: Color(0xff6A11DA),
                    fontFamily: 'Inter',
                     ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    MyTextField(textInputTypeee: TextInputType.emailAddress, isPassword:true),
                     SizedBox(
                      height: 20,
                      ),
                       
                    ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff624881),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("Confirm",
                    style: TextStyle(
                      color: Colors.white
                      ,fontFamily: 'Inter'
                      ,fontSize: 20
                        ),
                    ),
                  ),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

              