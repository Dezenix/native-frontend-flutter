import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widget/login_background_image.dart';
import 'widget/login_password_input.dart';
import 'widget/login_rounded_button.dart';
import 'widget/login_text_field.dart';

class LoginScreen extends StatelessWidget {
  static const TextStyle kBodyText =
      TextStyle(fontSize: 22, color: Colors.white, height: 1.5);

  static const Color kWhite = Colors.white;
  static const Color kBlue = Color(0xFF40ac9c);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LoginBackgroundImage(
          image: 'assets/images/logo.jpg',
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(
                  child: Text(
                    'Book Your Ride',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        
                        ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  LoginTextInputField(
                    icon: FontAwesomeIcons.envelope,
                    hint: 'Email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  LoginPasswordInput(
                    icon: FontAwesomeIcons.lock,
                    hint: 'Password',
                    inputAction: TextInputAction.done,
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Text(
                      'Forgot Password',
                      style: kBodyText,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                     LoginRoundedButton(buttonName: 'SignIn',
                        onTap: () {
                          Navigator.pushNamed(context, 'AvailableCarScreen');
                        },
                     
                     ),
                 
                                   
                  
              
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create a New Account ',
                    style: kBodyText,
                  ),
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, 'CreateNewAccount'),
                    child: Text(
                      'SignUp',
                      style: kBodyText.copyWith(
                          color: kBlue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
