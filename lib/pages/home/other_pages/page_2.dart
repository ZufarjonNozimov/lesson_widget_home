import 'package:flutter/material.dart';
import 'package:lesson_beginner_widget/pages/home/other_pages/page_3.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  static const route="/page_two";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarOpacity: .74,
        title: const Text(
          "Page Two",
          style: TextStyle(
            fontFamily: "Anton",
            fontSize: 33,
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.more_vert_outlined,size: 36,color: Colors.black,)),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(36), 
          child: Text(
            "Hello Page Two",
              style: TextStyle(
                fontFamily: "Kenia",
                fontSize: 20,
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Text messaging, or texting, is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters, between two or more users of mobile devices, desktops/laptops, or another type of compatible computer. Text messages may be sent over a cellular network or may also be sent via satellite or Internet connection.The term originally referred to messages sent using the Short Message Service (SMS). It has grown beyond alphanumeric text to include multimedia messages using the Multimedia Messaging Service (MMS) containing digital images, videos, and sound content, as well as ideograms known as emoji (happy faces, sad faces, and other icons), and instant messenger applications (usually the term is used when on mobile devices).",
            style: TextStyle(
              fontFamily: "Griffy",
              decoration: TextDecoration.underline,
              decorationColor: Colors.black,
              fontSize: 23,
              decorationStyle: TextDecorationStyle.wavy,
            ),
          )
        ],
      ),
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.black26,
        radius: 27,
        child: IconButton(onPressed: (){
          Navigator.pushNamed(context, PageThree.route);
        }, 
        icon:const Icon(Icons.next_plan_outlined,size: 30,color: Colors.red,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
    );
  }
}