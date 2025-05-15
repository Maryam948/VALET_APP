import 'package:flutter/material.dart';
import 'package:valet_app/shared/arrowicon.dart';
import 'package:valet_app/shared/socialbutton.dart';
import 'package:valet_app/shared/textfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                    height: 30,
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
                    'Email or Phon Number',
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
                      height: 30,
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
                    child: const Text("Continue",
                    style: TextStyle(
                      color: Colors.white
                      ,fontFamily: 'Inter'
                      ,fontSize: 20
                      , ),),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(children: [
                    Expanded(child: Divider(
                      color: Colors.black,
                      thickness: 0.6,
                    ),
                    ),
                    Text("OR",style: TextStyle(color: Colors.black,fontFamily: 'Inter'),),
                    Expanded(child: Divider(
                      color: Colors.black,
                      thickness: 0.6,
                    ),
                    )
                  ],), 
                SizedBox(height: 20),  
                socialButton(
                    imagePath: 'images/Vector(4).png' ,
                     label: "Continue with Google",
                       ),
                SizedBox(height: 10),
                socialButton(
                     imagePath: 'images/Vector(5).png',
                    label: "Continue with Facebook",
                  ),
                  SizedBox(height: 10),
                socialButton(
                    imagePath: 'images/Vector(6).png',
                    label: "Continue with Appel",
                  ),

                    

               ]
               ,
             ),
             
           ),
 

          ],
         ),
       ),
       


      
    );
  }
}

