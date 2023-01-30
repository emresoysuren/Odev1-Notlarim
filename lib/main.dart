import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MaterialApp(
      home: App(),
    ));

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<String> texts = ["Anim excepteur ullamco voluptate irure qui ad commodo cupidatat elit in.", "Dolor reprehenderit velit est eiusmod non proident.", "Aliqua labore ex ad aute culpa veniam enim minim commodo laboris.", "Nisi nulla quis ullamco in laborum voluptate laboris ut exercitation est dolore laborum tempor."];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef9ff),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) =>
                        const LinearGradient(colors: <Color>[
                      Color(0xffffbe0b),
                      Color(0xfffb5607),
                      Color(0xffff006e),
                      Color(0xff8338ec),
                      Color(0xff3a86ff),
                    ]).createShader(bounds),
                    child: Text(
                      "Odev1Notlarim",
                      textWidthBasis: TextWidthBasis.longestLine,
                      style: GoogleFonts.monoton(
                        textStyle: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    texts.elementAt(Random().nextInt(4)),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.flowCircular(
                      textStyle: const TextStyle(
                        fontSize: 24,
                        color: Color(0xff0d1b2a),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () => setState(() {
                      
                    }),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 32,
                      ),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffffbe0b),
                            Color(0xfffb5607),
                            Color(0xffff006e),
                            Color(0xff8338ec),
                            Color(0xff3a86ff),
                          ],
                        ),
                      ),
                      child: Text(
                        "Do not click me!",
                        style: GoogleFonts.luckiestGuy(
                          textStyle: const TextStyle(
                            color: Color(0xfffef9ff),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
