import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LearnMore extends StatelessWidget {
  const LearnMore({super.key, required this.textColor, required this.maxWidth});
  final Color textColor;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: maxWidth,
        child: FittedBox(
            fit: BoxFit.scaleDown,
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll<Color>(Colors.white),
                    padding: MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.width * 0.05,
                            MediaQuery.of(context).size.width * 0.02,
                            MediaQuery.of(context).size.width * 0.05,
                            MediaQuery.of(context).size.width * 0.02)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)))),
                child: Text(
                  "Learn More",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: textColor,
                      fontSize: 40,
                      height: 1.5),
                ))));
  }
}
