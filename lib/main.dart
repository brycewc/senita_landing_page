import 'package:flutter/material.dart';
import 'package:landing_page/screens/home_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_palette/flutter_palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Create a color palette with a set of pre-defined colors.
    const colorPalette = ColorPalette(<ColorModel>[
      RgbColor(0, 0, 0), // Black
      RgbColor(48, 41, 31), // Dark Grey
      RgbColor(77, 63, 40), // Brown
      RgbColor(172, 167, 161), // Middle Grey
      RgbColor(200, 162, 135), // Darker Tan
      RgbColor(207, 180, 172), // Lighter Tan
      RgbColor(235, 235, 235), // Light Grey
      RgbColor(255, 251, 245), // Off White
      RgbColor(255, 255, 255), // White
    ]);

    return MaterialApp(
        title: 'Flutter Landing Page',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.cairoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: Scaffold(body: PageView(children: const [HomeView()])));
  }
}
