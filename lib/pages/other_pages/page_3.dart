import 'package:flutter/material.dart';
import 'package:lesson_beginner_widget/pages/other_pages/page_4.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  static const route="/page_three";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
        toolbarOpacity: .6,
        title: const Text(
          "Page Three",
          style: TextStyle(
            fontFamily: "Caveat",
            fontSize: 28
          ),
        ),
         actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.more_vert_outlined,size: 36,color: Colors.black,)),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(30), 
        child: Text(
          "Hello Page Three",
          style: TextStyle(
            fontFamily: "Caveat",
            fontSize: 18,
            ),
         ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(30),
            right: Radius.circular(30),
          ),
          side: BorderSide(
            color: Colors.green,
            width: 5,
          )
        ),
      ),
      body: const Column(
        children: [
          Text(
            "Text messaging, or texting, is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters, between two or more users of mobile devices, desktops/laptops, or another type of compatible computer. Text messages may be sent over a cellular network or may also be sent via satellite or Internet connection.The term originally referred to messages sent using the Short Message Service (SMS). It has grown beyond alphanumeric text to include multimedia messages using the Multimedia Messaging Service (MMS) containing digital images, videos, and sound content, as well as ideograms known as emoji (happy faces, sad faces, and other icons), and instant messenger applications (usually the term is used when on mobile devices).",
            style: TextStyle(
              fontSize: 23,
              fontFamily: "Griffy",
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.wavy,
              decorationColor: Colors.blue
            ),
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.black26,
        radius: 27,
        child: IconButton(onPressed: (){
          Navigator.pushNamed(context, PageFour.route);
        }, 
        icon:const Icon(Icons.next_plan_outlined,size: 30,color: Colors.red,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
    );
  }
}