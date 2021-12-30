// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison
import 'package:anim/components/page_info.dart';
import 'package:anim/components/yellow_button.dart';
import 'package:anim/screens/contact.dart';

import 'package:flutter/material.dart';

class OTPscreen extends StatefulWidget {
  static const String screenID = 'otp_screen';
  @override
  _OTPscreenState createState() => _OTPscreenState();
}

class _OTPscreenState extends State<OTPscreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  // Variables
  late Size _screenSize;
  int? _currentDigit;
  int? _firstDigit;
  int? _secondDigit;
  int? _thirdDigit;
  int? _fourthDigit;

  // Return "OTP" input field
  get _getInputField {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _otpTextField(_firstDigit),
        _otpTextField(_secondDigit),
        _otpTextField(_thirdDigit),
        _otpTextField(_fourthDigit),
      ],
    );
  }

  // Returns "Otp" keyboard
  get _getOtpKeyboard {
    return Container(
        height: 300,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _otpKeyboardInputButton(
                      label: "1",
                      onPressed: () {
                        _setCurrentDigit(1);
                      }),
                  _otpKeyboardInputButton(
                      label: "2",
                      onPressed: () {
                        _setCurrentDigit(2);
                      }),
                  _otpKeyboardInputButton(
                      label: "3",
                      onPressed: () {
                        _setCurrentDigit(3);
                      }),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _otpKeyboardInputButton(
                      label: "4",
                      onPressed: () {
                        _setCurrentDigit(4);
                      }),
                  _otpKeyboardInputButton(
                      label: "5",
                      onPressed: () {
                        _setCurrentDigit(5);
                      }),
                  _otpKeyboardInputButton(
                      label: "6",
                      onPressed: () {
                        _setCurrentDigit(6);
                      }),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _otpKeyboardInputButton(
                      label: "7",
                      onPressed: () {
                        _setCurrentDigit(7);
                      }),
                  _otpKeyboardInputButton(
                      label: "8",
                      onPressed: () {
                        _setCurrentDigit(8);
                      }),
                  _otpKeyboardInputButton(
                      label: "9",
                      onPressed: () {
                        _setCurrentDigit(9);
                      }),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(child: Container()),
                  Expanded(
                    child: _otpKeyboardInputButton(
                        label: "0",
                        onPressed: () {
                          _setCurrentDigit(0);
                        }),
                  ),
                  Expanded(
                    child: _otpKeyboardActionButton(
                        label: Icon(
                          Icons.backspace_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            if (_fourthDigit != null) {
                              _fourthDigit = null;
                            } else if (_thirdDigit != null) {
                              _thirdDigit = null;
                            } else if (_secondDigit != null) {
                              _secondDigit = null;
                            } else if (_firstDigit != null) {
                              _firstDigit = null;
                            }
                          });
                        }),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  // Returns "OTP" input part
  get _getInputPart {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          UpperHalfWidget("Hanoi, Vietnam", "OTP Authentication",
              "An authentication code has been sent to (+84) 999 999 999"),
          _getInputField,
          YellowButton(
            buttonText: 'CONTINUE',
            iconData: Icons.arrow_right_alt_sharp,
            onclick: () {},
          ),
          _getOtpKeyboard
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: _screenSize.width,
          padding: EdgeInsets.only(bottom: 16.0),
          child: _getInputPart,
        ),
      ),
    );
  }

  // Returns "Otp custom text field"
  Widget _otpTextField(int? digit) {
    return Container(
      width: 35.0,
      height: 45.0,
      alignment: Alignment.center,
      child: Text(
        digit != null ? digit.toString() : "",
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.black,
        ),
      ),
      decoration: BoxDecoration(
//            color: Colors.grey.withOpacity(0.4),
        border: Border(
          bottom: BorderSide(
            width: 2.0,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  // Returns "Otp keyboard input Button"
  Widget _otpKeyboardInputButton(
      {required String label, required VoidCallback onPressed}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(40.0),
        child: Container(
          height: 80.0,
          width: 80.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Returns "Otp keyboard action Button"
  Widget _otpKeyboardActionButton(
      {required Widget label, required VoidCallback onPressed}) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(40.0),
      child: Container(
        height: 80.0,
        width: 80.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Center(
          child: label,
        ),
      ),
    );
  }

  // Current digit
  void _setCurrentDigit(int i) {
    setState(() {
      _currentDigit = i;
      if (_firstDigit == null) {
        _firstDigit = _currentDigit;
      } else if (_secondDigit == null) {
        _secondDigit = _currentDigit;
      } else if (_thirdDigit == null) {
        _thirdDigit = _currentDigit;
      } else if (_fourthDigit == null) {
        _fourthDigit = _currentDigit;

        var otp = _firstDigit.toString() +
            _secondDigit.toString() +
            _thirdDigit.toString() +
            _fourthDigit.toString();

        // Verify your otp by here. API call
      }
    });
  }
}
