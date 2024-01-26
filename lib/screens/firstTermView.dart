import 'package:flutter/material.dart';

class FirstTermView extends StatelessWidget {
  FirstTermView({super.key});

  final subjectArray = ['Myanmar','English','Mathematic','Chemistry','Physics','Biology/Ecology',];
  final markArray = ['65','70','70','70','60','75',];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          'Exam Result',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
      ),
      body:  Padding(
        padding:const EdgeInsets.all(20),
        child: Column(
          children: [
            const Divider(
              color: Colors.orange,
            ),

            //subjet mark grade view
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Subject',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
                Text(
                  'Marks',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                
                SizedBox(width: 40,),

                Text(
                  'Grade',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(width: 10,),
              ],
            ),

            const Divider(
              color: Colors.orange,
            ),

            //space
            const SizedBox(height: 10,),

            //mark view
            Expanded(child: ListView.builder(
              itemCount: subjectArray.length,
              itemBuilder: (context,index){
              return markListView(subjectArray[index], markArray[index]);
            }))
          ],
        ),
      ),
    );
  }
}

Widget markListView(String text,mark) {
  return Container(
    height: 50,
    margin: const EdgeInsets.symmetric(vertical: 10),
    padding: const EdgeInsets.symmetric(horizontal: 17),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.orange),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.blue),
          ),
        ),
        
        Text('$mark/100',style:const TextStyle(color: Colors.blue),),
        const SizedBox(width: 60,),
        const Text('Pass',style: TextStyle(color: Colors.orange),),
       
      ],
    ),
  );
}
