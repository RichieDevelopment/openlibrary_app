
import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({required this.title, required this.value, super.key});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return value != "" ? Padding(
      padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.005),
      child: Text.rich(
        TextSpan(children: [TextSpan(text: "$title:", style: const TextStyle(fontWeight: FontWeight.w600)), TextSpan(text: value)])
        ),
    ) : const SizedBox();
  }
}