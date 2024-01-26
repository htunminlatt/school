import 'package:flutter/material.dart';

class NewRequestView extends StatelessWidget {
  const NewRequestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          'New Request',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'From :',
              style: TextStyle(
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),

            const SizedBox(
              height: 5,
            ),

            const Text(
              'Date :',
              style: TextStyle(
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),

            const SizedBox(
              height: 5,
            ),

            const Text(
              'Message :',
              style: TextStyle(
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),

            const SizedBox(
              height: 10,
            ),

            //input view
            TextField(
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  border: InputBorder.none,
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  fillColor: const Color.fromARGB(255, 230, 229, 229),
                  label: const Center(
                      child: Text(
                    'Type a message...',
                  )),
                  labelStyle: const TextStyle(
                      color: Colors.blue,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),

            //space
            const SizedBox(
              height: 15,
            ),

            //add photo view
            Container(
              width: 130,
              height: 100,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 230, 229, 229),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //add photo
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: const Icon(
                      Icons.add,
                      color: Colors.blue,
                    ),
                  ),

                  const Text(
                    'Add Photo',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            //space
            const SizedBox(
              height: 15,
            ),

            //submit button view
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      side: const BorderSide(
                        color: Colors.orange,
                      ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {},
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )),
            ),

            //space
            const SizedBox(height: 15,),

            //like comment view
            Center(
              child: SizedBox(
                width: 170,
                child: Row(
                children: [
                  const Icon(Icons.favorite_outline),
                  
                  const SizedBox(width: 5,),
                
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
