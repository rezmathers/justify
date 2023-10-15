import 'package:flutter/material.dart';
import 'package:justi5/constants/big_box.dart';
import 'package:justi5/constants/card_view.dart';
import 'package:justi5/screens/card_click_screen.dart';
import 'package:justi5/home_page_horizontal_scroll_list_data/home_page_horizontal_scroll_list_data.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20).copyWith(bottom: 0),
          child: const Text("Explore" , style: TextStyle(fontSize: 20),),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Row(
            children: [
              GestureDetector(

                  child: const CardView(
                    categories: 'Attorneys',
                    description: 'Your Attorney friends for you',
                    heading: "Law and Order",
                    imageUrl: "https://images.unsplash.com/photo-1589829545856-d10d557cf95f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGF3JTIwYW5kJTIwb3JkZXJ8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
                  ),
                onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CardClick()));
                },
              ),
              Row(children: cardList,),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.add),),
              ),

            ],
          ),
        ),
        const BigBox(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20).copyWith(bottom: 0),
          child: const Text("Recently Viewed And More" , style: TextStyle(fontSize: 20),),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Row(
            children: cardList
          ),
        ),
        SizedBox(height: 100,)
      ],
    );
  }
}
