import 'package:flutter/material.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  static const route="/page_four";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.tealAccent,
        toolbarOpacity: .9,
        title: const Text(
          "Page Four",
          style: TextStyle(
            fontFamily: "Kenia",
            fontSize: 40
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
            color: Colors.black,
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
              fontFamily: "Agbalumo",
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.wavy,
              decorationColor: Colors.redAccent
            ),
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.black26,
        radius: 27,
        child: IconButton(onPressed: (){
          
        }, 
        icon:const Icon(Icons.next_plan_outlined,size: 30,color: Colors.red,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
    );
  }
}