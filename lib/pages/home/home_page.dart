import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lesson_beginner_widget/pages/other_pages/page_1.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

   static const route="/home_page";

  final GlobalKey<ScaffoldState>_globalKey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer:const  Drawer(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text("Menue 1",),
            SizedBox(height: 10,),
            Text("Menue 2"),
            SizedBox(height: 10,),
            Text("Menue 3"),
            SizedBox(height: 10,),
            Text("Menue 4"),
            SizedBox(height: 10,),
            Text("Menue 5"),
            SizedBox(height: 10,),
            Text("Menue 6"),
            SizedBox(height: 10,),
            Text("Menue 7"),
          ],
        ),
      ),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor:const Color.fromARGB(255, 48, 245, 10),
        title: const Text(
          "My home page",
          style: TextStyle(
            fontSize: 30,
            fontFamily: "Agbalumo",
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600
            ),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            _globalKey.currentState!.openDrawer();
          }, 
          icon: const Icon(CupertinoIcons.info),iconSize: 35,
        ),
        bottom: const PreferredSize(
          preferredSize:Size.fromHeight(20), 
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Kenia",
              fontWeight: FontWeight.w700
            ),
          )
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(30),
            right: Radius.circular(30),
          ),
          side: BorderSide(color: Colors.black45,width: 5)
        ),
        actions: [
          IconButton(onPressed: (){}, 
          icon:const  Icon(Icons.more_vert_outlined,size: 35,)
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
        toolbarOpacity: .6,
      ),
      body: const Column(
        children: [
          SizedBox(height: 20,),
          Text("Here you can find activities to practise your reading skills. Reading will help you to improve your understanding of the language and build your vocabulary.The self-study lessons in this section are written and organised by English level based on the Common European Framework of Reference for languages (CEFR). There are different types of texts and interactive exercises that practise the reading skills you need to do well in your studies, to get ahead at work and to communicate in English in your free time.Take our free online English test to find out which level to choose. Select your level, from A1 English level (elementary) to C1 En",
          style: TextStyle(
            fontSize: 23,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.wavy,
            decorationColor: Colors.green,
          ),
         ),
        ],
      ),
      floatingActionButton:CircleAvatar(
        backgroundColor: Colors.black26,
        radius: 25,
        child:  IconButton(onPressed: (){
          Navigator.pushNamed(context, PageOne.route);
        },
         icon:const Icon(Icons.next_plan_outlined,size: 30,color: Colors.red,),
         splashColor: Colors.brown,
        )
     ),
     floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}