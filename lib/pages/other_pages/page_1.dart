import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lesson_beginner_widget/pages/other_pages/page_2.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  static const route="/page_1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        backgroundColor: Colors.purple.shade500,
        foregroundColor: Colors.black,
        elevation: 7,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text(
          "Page One",
          style: TextStyle(
            fontFamily: "Griffy",
            fontStyle: FontStyle.normal,
            fontSize: 38,
            fontWeight: FontWeight.w900
          ),
        ),
        bottom: const PreferredSize(
          preferredSize:Size.fromHeight(30) , 
          child: Text(
            "Next page",
            style: TextStyle(
              fontFamily: "Agbalumo",
              fontStyle: FontStyle.italic,
              fontSize: 18
            ),
          )
          ),
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(30),
            right: Radius.circular(30),
          ),
          side: BorderSide(color: Colors.black,width: 4),
        ) ,
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.more_vert_outlined,size: 36,)),
        ],
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Advanced English reading texts: while the majority of texts in this resource are at CEF levels C1,  a few are harder (level C2) and a few are easier (level B2). All the texts in this collection are written in normal English; however in order to maximize their language  teaching potential, most have been specifically written for students of English as a foreign or second language, or else for high school students. Texts are accompanied by advanced reading comprehension worksheets designed to prepare students for the Cambridge Advanced English (C1) certification or for the international  TOEFL or TOEIC tests. Printable reading texts: most pages are printer-friendly and will print directly as well as, or better than, PDF versions.",
            style: TextStyle(
              fontFamily: "Kenia",
              fontSize: 23,
              decoration: TextDecoration.underline,
              decorationColor: Colors.green,
              decorationStyle: TextDecorationStyle.wavy
            ),
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.black26,
        radius: 27,
        child: IconButton(onPressed: (){
          Navigator.pushNamed(context, PageTwo.route);
        }, 
        icon:const Icon(Icons.next_plan_outlined,size: 30,color: Colors.red,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
    );
  }
}