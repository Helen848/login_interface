/*
* Author: Helen Mekonnen
* Date: 9/1/22
* Description: A Sample App For Login Interface
* Sec: 3, Id: 14693/20
* */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //centerTitle: true,
          title: Text("Get's Started",
                   style: TextStyle(
                     fontSize: 23,
            ),),),
        body: Column(
                /*Using Column Container Widget which have children property
                 that allows to add more than one Widget */
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Text("Get's Started"),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text("Already have an account?",
                      //In the Text Widget we used style Property to Add TextStyle Class
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                    ),),
                    Text("Sign in.",
                        style: TextStyle(
                         color: Colors.blueAccent,
                         fontSize: 20,)),],
                ),),
              Text("Full Name"),
              Padding(
                // Use padding to get space between widgets
                padding: EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Helen Mekonnen',
                  ),
                ),),
              Text("Email Address"),
              Padding(
                padding: EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    hintText: 'helismart1323@gmail.com',
                  ),
                ),),
              Text("Password"),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    hintText: '**************',
                  ),
                ),),
                Padding(
                  padding: EdgeInsets.all(10),
                child: CheckboxListTile(
                  title: Text("i agree to platforms terms and services and privacy policy"),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: false,
                  onChanged: (val){}),),
              Padding(
                padding: EdgeInsets.all(20),
                child: Center(
                child: ElevatedButton(
                  child: Text("Register"),
                  /**In the onPressed property we have created the contactUs
                      function to give Information when the user Clicks the Button */

                  onPressed: () => registered(context),
                ),),),
            ],),),);
  }
  /* To Show an AlertDialogue Follow these Steps
*  -Calling the showDialog function in order to show a message to the user
*  -Setting context- this passed to our method through the context parameter
*  -Setting builder- in order to use builder property we need to create a function a
*  -Returning the AlertDialog property
*  -Setting the AlertDialog properties*/
  void registered(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Register'),
          content: Text('You have Registered Successfully'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              // The pop method of the Navigator class will close the AlertDialog
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}
