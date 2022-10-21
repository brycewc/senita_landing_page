import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:landing_page/reusedWidgets/learn_more_button.dart';

class Jumbotron extends StatelessWidget {
  const Jumbotron({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return AspectRatio(
        aspectRatio: 10 / 7,
        //Still figuring out how to get the box restrained to a certain height then foregoing the aspect ratio
        child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: width * .8),
            child: Stack(children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 44, 44, 44),
                    image: DecorationImage(
                      image: const AssetImage("images/highfives.png"),
                      fit: BoxFit.fitWidth,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.35), BlendMode.dstATop),
                    )),
              ),
              Center(
                  child: Column(
                children: [
                  SizedBox(height: width * .6 * 0.1),
                  SizedBox(
                    width: width * 0.12,
                    child: const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text("Senita",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(207, 180, 172, 1),
                              fontSize: 34,
                              height: 0.8)),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.15,
                    child: const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text("EMPLOYEE ENGAGEMENT \n SOFTWARE",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 11,
                              height: 1.5)),
                    ),
                  ),
                  SizedBox(height: width * .6 * 0.1),
                  SizedBox(
                      width: width * 0.8,
                      child: const FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Make employee rentention \n your superpower.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 70,
                              height: 1.5),
                        ),
                      )),
                  SizedBox(
                      width: width * 0.7,
                      child: const FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "data-backed tools to enable employees to create \n deep connections to their work and to the company.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Color.fromRGBO(172, 167, 161, 1),
                                fontSize: 24,
                                height: 1.5),
                          ))),
                  SizedBox(height: width * .6 * 0.15),
                  LearnMore(
                    textColor: const Color.fromRGBO(200, 162, 135, 1),
                    maxWidth: width * 0.2,
                  )
                ],
              ))
            ])));
  }
}
