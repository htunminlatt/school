import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          'Father Detail',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: 5,
          itemBuilder: (context, index) {
            return myListView();
          }),
    );
  }

  Widget myListView() {
    return SizedBox(
      height: 400,
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
                    'Teacher Name',
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
            height: 20,
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

          //image view
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 0)),
              child: Row(
                children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration:
                        BoxDecoration(
                          border: Border.all(color: Colors.black),
                          image: const DecorationImage(image: NetworkImage('https://storage.googleapis.com/pai-images/4cbcaae6941d48aab2fd4e0fa8519efe.jpeg'),fit: BoxFit.cover)
                          ),
                   
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                          child: Image.network('https://news.yale.edu/sites/default/files/styles/featured_media/public/yalenews_57735773-cc.jpg?itok=5s1EYkrl&c=07307e7d6a991172b9f808eb83b18804',
                          fit: BoxFit.cover,
                          ),
                        ),
                      ),
                     Expanded(
                      flex: 1,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                          child: Image.network('https://news.yale.edu/sites/default/files/styles/featured_media/public/yalenews_57735773-cc.jpg?itok=5s1EYkrl&c=07307e7d6a991172b9f808eb83b18804',
                          fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),

          //space
          const SizedBox(height: 15,),
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
