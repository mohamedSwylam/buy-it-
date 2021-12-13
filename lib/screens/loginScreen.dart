import 'package:bye_it/screens/signupScreen.dart';
import 'package:bye_it/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kMainColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: MediaQuery.of(context).size.height * .3,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image(
                    image: AssetImage('images/icons/icon3.png'),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Text(
                      'Moza Store',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * .1,
          ),
          CustomTextField(icon: Icons.email, hint: 'Enter Your E-Mail'),
          SizedBox(
            height: height * .02,
          ),
          CustomTextField(icon: Icons.lock, hint: 'Enter Your Password'),
          SizedBox(
            height: height * .05,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: () {},
              color: Colors.black,
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * .05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account ? ',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.pushNamed(context, SignUpScreen.id);
                } ,
                child: Text(
                  ' Sign Up',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
