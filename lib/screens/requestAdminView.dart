import 'package:flutter/material.dart';

class RequestAdminView extends StatelessWidget {
  const RequestAdminView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          'Request From Admin',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
      ),
      body:  ListView.builder(
        padding:const EdgeInsets.all(18),
        itemCount: 5,
        itemBuilder: (context,index){
      
          return requestListView();
      
      }),
    );
  }

  Widget requestListView() {
     return SizedBox(
      height: 220,
      child: Column(
        children: [
          //teacher name view
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.blue),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Admin Name',
                    style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Monday at 12:00 Am',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              )
            ],
          ),

          //space
          const SizedBox(
            height: 10,
          ),
          //text view
           const Padding(
             padding: EdgeInsets.only(left: 48,right: 18,bottom: 10),
             child: Text(
              '" title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title title "',
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              maxLines: 6,
              style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                       ),
           ),

          //space
          const SizedBox(height: 5,),

          //input view
          Padding(padding: const EdgeInsets.only(left: 48,right: 60),
          child: Row(
            children: [
              const Icon(Icons.favorite_outline),

              const SizedBox(width: 10,),

              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 225, 224, 224),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const TextField(
                     cursorHeight: 13,
                    // maxLines: 1,
                     style: TextStyle(fontSize: 11,),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 15),
                      border: InputBorder.none,
                      hintText: 'add a comment....',
                      hintStyle: TextStyle(fontStyle: FontStyle.italic)
                    ),
                  ),
                ),
              )
            ],
          ),
          )
        ],
      ),
    );
  }

}
