import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
    @override
    _LoginScreenState createState() =>  _LoginScreenState();
}

Widget buildEmail(){
  //this is a widget for email input of the log in screen
  // it returns a column that has various text design
  // it has a container that has the input field of the user and various designs

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
            color:  Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
               BoxShadow(
                 color:  Colors.black26,
                 blurRadius: 6,
                 offset: Offset(0,2)
               )
            ]
          ),
          height: 60,
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xff351c75)
              ),
              hintText: 'Email',
              hintStyle: TextStyle(
                color: Colors.black38
              )
            )
          )
        )
      ],
    );
}

Widget buildPassword(){
  // this is the password field of the login screen which has the same
  // design of email input of the user with slightly changes of the
  // input text to password text and the side icon
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Password',
        style: TextStyle(
            color:  Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(height: 10),
      Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color:  Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
              obscureText: true,
              style: TextStyle(
                  color: Colors.black87
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top:14),
                  prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xff351c75)
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: Colors.black38
                  )
              )
          )
      )
    ],
  );
}

Widget buildForgotPass(){
  // this is the forgot password text widget below password field
  return Container(
    alignment: Alignment.centerRight,
      child: Text(
        'Forgot Password?',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
  );
}

Widget buildLoginBtn(){
  // this is the login button widget design and since there is no functionality
  // ive set the values to empty.
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: ElevatedButton(
     style: ElevatedButton.styleFrom(
       primary: Color(0xff351c75),
       padding: EdgeInsets.all(15),
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(15)
       )
     ),

        child: Text('Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
          onPressed: ()=> print(''),
          onLongPress: ()=> print (''),

    )
  );
}

Widget buildSignUp(){
  // this is the sign up text below log in button that returns a gesture detector
  // that detects the gesture of the user when this field is tap
  // since this has no functionality yet ive set the values to null
  return GestureDetector(
    onTap: ()=> print(""),
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don't have an Account? ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400
            )
          ),
          TextSpan(
              text: "Sign Up",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              )
          ),
        ]
      ),
    ),
  );
}

class _LoginScreenState extends State<LoginScreen> {
  // lastly this is the class in which all widgets are stored and place in the screen
  // this returns a scaffold that holds the widgets and their current arrangement in the screen
  // which is place inside a widget build context to track each widget in the tree and their position
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack (
              children: <Widget> [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0x66351c75),
                        Color(0x99351c75),
                        Color(0xcc351c75),
                        Color(0xff351c75),
                      ]
                    )
                  ),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 120
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height:50),
                        buildEmail(),
                        SizedBox(height:20),
                        buildPassword(),
                        SizedBox(height:20),
                        buildForgotPass(),
                        buildLoginBtn(),
                        buildSignUp(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

    );
  }
}