import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 40,),
        Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                alignment: Alignment.topRight,
                height: 180,
                width: 360,
                decoration:
                const BoxDecoration(color: Color.fromRGBO(245, 114, 164, 1.0)),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                      child: Text("Lets Learn \nMore", style:GoogleFonts.lora(fontSize: 27,color: Colors.white),),
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 10, 10),
                        child: Text("Get started", style:GoogleFonts.workSans(fontSize: 20,color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform(
            transform: Matrix4.translationValues(-10, -30.0, 0.0),
            child: Image.asset(
              'assets/girl.png',
              scale: 1.2,
            ),
          ),
        ]),
      ],
    );
  }
}
