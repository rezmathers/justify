import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: const Text("Law And Order"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: CustomRadioButton(
                elevation: 2,
                buttonLables: const [
                  'All',
                  'Filter1',
                  'Filter2',
                  'Filter3',
                  'Filter4',
                  'Filter5',
                  'Filter6',
                  'Filter7',
                  'Filter8',

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
          ),
          Column(
            children: [
              SizedBox(
                height: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: const [
                          topcards(),
                          topcards(),
                          topcards(),
                          topcards(),
                          topcards(),
                          topcards(),
                          topcards(),
                          topcards(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
         Expanded(
           child: ListView(
             children: const [
               Vertical_Child(),
               Vertical_Child(),
               Vertical_Child(),
               Vertical_Child(),
               Vertical_Child(),
               Vertical_Child(),
               Vertical_Child()
             ],
           ),
         )
        ],
      ),

    );
  }
}

class Vertical_Child extends StatelessWidget {
  const Vertical_Child({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0).copyWith(bottom: 20),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 3,
              color: Color(0x32000000),
              offset: Offset(0, 1),
            )
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1620917669788-be691b2db72a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fHByb2R1Y3RzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
              width: 180,
              fit: BoxFit.fill,
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title',
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: Text(
                          'Subtitle',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                        child: Text(
                          'subtext',
                        ),
                      ),
                    ],
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

class topcards extends StatelessWidget {
  const topcards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x34090F13),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: Text(
                  'Subtitle',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
