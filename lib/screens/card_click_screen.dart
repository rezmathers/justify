import 'package:flutter/material.dart';
import 'package:justi5/screens/card_click_screen_child/card_click_screen_vertical_child.dart';
import 'package:radio_grouped_buttons/custom_buttons/custom_radio_buttons_group.dart';

class CardClick extends StatefulWidget {
  const CardClick({super.key});

  @override
  State<CardClick> createState() => _CardClickState();
}

class _CardClickState extends State<CardClick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
              child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(18.0).copyWith(right: 0, bottom: 0),
              child: const Text(
                "Legal Services And Merchandise ",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0).copyWith(right: 0),
              child: const Text(
                "The Place To Find The Right Legal Aid",
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: CustomRadioButton(
                  elevation: 2,
                  buttonHeight: 60,
                  buttonWidth: 100,
                  buttonLables: const [
                    'cos',
                    'sin',
                    'tan',
                    'hello',
                    'bye',
                    'hello',
                    'bye',
                    'hello',
                    'bye',
                  ],
                  buttonValues: const [
                    '1',
                    '2',
                    '3',
                    '4',
                    '5',
                    '6',
                    '7',
                    '8',
                    '9'
                  ],
                  radioButtonValue: (value, index) {
                    print("Button value $value");
                    print("Integer value $index");
                  },
                  horizontal: true,
                  enableShape: true,
                  buttonSpace: 15,
                  buttonColor: Colors.white,
                  selectedColor: Colors.cyan,
                ),
              ),
            ), // Horizontal buttons
          ],)),
          Expanded(
            flex: 10,
            child: ListView(
              children: [
SizedBox(
  height : 220 ,
  child:   ListView(
    scrollDirection: Axis.horizontal,

    children: [
      SquareCards(),
      SquareCards(),
      SquareCards(),
      SquareCards(),
    ],

  ),
),
                 // Working
                const Expanded(
                  child: Column(
                    children: [
                      CardClickVerticalChild(
                        num: 2,
                      ),
                      CardClickVerticalChild(
                        num: 3,
                      ),
                      CardClickVerticalChild(
                        num: 7,
                      ),
                      CardClickVerticalChild(
                        num: 6,
                      ),
                      CardClickVerticalChild(
                        num: 8,
                      ),
                      CardClickVerticalChild(
                        num: 4,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SquareCards extends StatelessWidget {
  const SquareCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 7,
              color: Color(0x2F1D2429),
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
          child: Column(

            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://images.unsplash.com/photo-1569074187119-c87815b476da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHNwb3J0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
                  width: double.infinity,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Main Header',
                      ),

                  ],
                ),
              ),
              const Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                   'hello world'

                      ),
                    ),

                ],
              ),
            ],
          ),
        ),
      ),
    )
    ;
  }
}

