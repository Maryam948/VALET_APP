import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff624881), 
      body: Container(
       padding: EdgeInsets.fromLTRB(35, 200, 35, 67),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 75,
                    backgroundColor: Color(0xffBBFFB6),
                    child: Image(image: AssetImage("images/check-line.png"))
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text("Payment Successful",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w600),),
                  Text(" Your payment has successfully completed.",style: TextStyle(color: Color(0xff9B8DAD),fontSize:17,fontWeight: FontWeight.w600),),
                  Text("Thank you for using valet" ,style: TextStyle(color: Color(0xff9B8DAD),fontSize:17,fontWeight: FontWeight.w600),),
                ],
              ),
            )
             
          ],
        
            ),
      ),
    );
  }
}
