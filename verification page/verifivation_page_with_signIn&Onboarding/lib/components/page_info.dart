import 'package:flutter/material.dart';

class UpperHalfWidget extends StatelessWidget {
  const UpperHalfWidget(
      this.locationText, this.titleText, this.bottomContentText);
  final String locationText;
  final String titleText;
  final String bottomContentText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_pin,
                size: 30,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                locationText,
                style: const TextStyle(fontSize: 24),
              )
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            titleText,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            bottomContentText,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.grey.shade600),
          ),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }
}
