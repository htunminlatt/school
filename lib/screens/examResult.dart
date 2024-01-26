import 'package:flutter/material.dart';

class ExamResultView extends StatelessWidget {
  const ExamResultView({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            examListView('First Term'),
            examListView('Mid Term'),
            examListView('Final Term')
          ],
        ),
      ),
    );
  }
}


  Widget examListView(String text) {
    return Container(
      height: 50,
      margin:const EdgeInsets.symmetric(vertical: 10),
      padding:const EdgeInsets.symmetric(horizontal: 17),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
        borderRadius: BorderRadius.circular(8),
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style:const TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 17,
                fontWeight: FontWeight.bold,color: Colors.blue),
          ),
          const Icon(Icons.chevron_right_rounded,color: Colors.orange,size: 30,)
        ],
      ),
    );
  }

