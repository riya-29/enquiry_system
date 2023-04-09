import 'package:enquiry_system/Login.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class SignUp extends StatelessWidget{
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
              padding: EdgeInsets.only(left: 18.0,right: 18.0,top: 50),
              child: Text("Register Now",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Calibri'),),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: const [
                  Center(child: Text("Search People around the Globe",style: TextStyle(color: Colors.white),)),
                  Center(child: Text("Sign Up and Get Started",style: TextStyle(color: Colors.white),)),
                ],
              ),
            ),

            //Name
            Container(alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(8.0),
              child: const Text("Name",style: TextStyle(color: Colors.black,fontFamily: 'Times New Roman',fontWeight: FontWeight.bold),),
            ),
            Card(color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0,horizontal: 10),
                child: TextField(controller: email,
                  decoration: const InputDecoration(
                      hintText: "Enter Name",
                      border: InputBorder.none
                  ),

                ),
              ),
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
            // Confirm Password
            Container(alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(8.0),
              child: const Text("Confirm Password",style: TextStyle(color: Colors.black,fontFamily: 'Times New Roman',fontWeight: FontWeight.bold),),
            ),
            Card(color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0,horizontal: 10),
                child: TextField(controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Confirm Password",
                      border: InputBorder.none
                  ),

                ),
              ),
            ),
            //Button
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Card(color: Colors.black,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                      },
                      child: const Text("Register",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
            ),
            TextButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                },
                child: const Text("Already have an account? Login",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Calibri'),)
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