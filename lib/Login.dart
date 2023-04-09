import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      body: Container(
        padding: const EdgeInsets.all(35),
        height: MediaQuery.of(context).size.height,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0,vertical: 50),
              child: Text("Enquiry System",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            //Icon
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/globe.png"),
            ),
            //Email
            Container(alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(8.0),
              child: const Text("Email",style: TextStyle(color: Colors.black,fontFamily: 'Times New Roman',fontWeight: FontWeight.bold),),
            ),
            Card(color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0,horizontal: 10),
                child: TextField(controller: email,
                decoration: const InputDecoration(
                    hintText: "Enter Email",
                  border: InputBorder.none
                ),

                ),
              ),
            ),
            // Password
            Container(alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(8.0),
              child: const Text("Password",style: TextStyle(color: Colors.black,fontFamily: 'Times New Roman',fontWeight: FontWeight.bold),),
            ),
            Card(color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0,horizontal: 10),
                child: TextField(controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter Password",
                      border: InputBorder.none
                  ),

                ),
              ),
            ),
            //Button
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Card(color: Colors.black,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                  },
                      child: const Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
            ),
            const Spacer(),
            const Center(child: Text("By",style: TextStyle(color: Colors.white,fontFamily: 'Calibri'),)),
            const Center(child: Text("Sourav Kumar",style: TextStyle(color: Colors.white,fontFamily: 'Calibri',fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );

  }

}