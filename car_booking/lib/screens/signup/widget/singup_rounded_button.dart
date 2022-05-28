import 'package:flutter/material.dart';


class SingupRoundedButton extends StatelessWidget {
  const SingupRoundedButton({
required this.onTap,
    required this.buttonName, 
  });
final VoidCallback onTap;
  final String buttonName;

  @override
    static const TextStyle kBodyText =
    TextStyle(fontSize: 22, color: Colors.white, height: 1.5);

static const Color kWhite = Colors.white;
static const Color kBlue = Color(0xFF40ac9c);
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kBlue,
      ),

      child:
      
      
      
       TextButton(
       
           onPressed: onTap,
        child: Text(
          buttonName,
          style: kBodyText.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}