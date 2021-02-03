import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'Login.dart';
//import 'package:authentification/Login.dart';
import 'SignUp.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {

  navigateToLogin()async{

    Navigator.pushReplacementNamed(context, "Login");
  }

  navigateToRegister()async{

    Navigator.pushReplacementNamed(context, "SignUp");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          children: <Widget>[

            SizedBox(height: 20.0),

            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Container(
                height: 400,

                child: Image(image: AssetImage("images/gym.jpg"),
                  fit: BoxFit.contain,
                ),
              ),
            ),

           // SizedBox(height : 20),

            RichText(

                text: TextSpan(
                    text: 'Welcome to ', style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),

                    children: <TextSpan>[
                      TextSpan(
                          text: 'Fitness Center', style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color:Color(0xFF941414))
                      )
                    ]
                )
            ),
            SizedBox(height: 10.0),

            Text('A place to stay Fit and healthy',style: TextStyle(color:Colors.black),),

            SizedBox(height: 30.0),


            Row( mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                /*      RaisedButton(
                  padding: EdgeInsets.only(left:30,right:30),

                  onPressed: navigateToLogin,
                  child: Text('LOGIN',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  ),),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.orange
                ),   */

                ElevatedButton(

                  child: Text('LOGIN'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(left:30,right:30),
                    primary: Color(0xFF13ECA4),
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),

                  onPressed: navigateToLogin,
                ),



                SizedBox(width:20.0),

                /*        RaisedButton(
                  padding: EdgeInsets.only(left:30,right:30),

                  onPressed: navigateToRegister,
                  child: Text('REGISTER',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  ),),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.orange
                ),
*/
                ElevatedButton(

                  child: Text('REGISTER'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(left:30,right:30),
                    primary: Colors.orange,
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),

                  onPressed: navigateToRegister,
                ),


              ],
            ),


            //SizedBox(height : 10.0),

            SignInButton(
              Buttons.Google,
              text: "Sign up with Google",
              onPressed: () {},
            ),

           
          ],
        ),
      ),

    );
  }
}