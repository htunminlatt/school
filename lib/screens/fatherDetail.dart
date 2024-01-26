import 'package:flutter/material.dart';

class FatherDetailView extends StatelessWidget {
  FatherDetailView({super.key});

  final TextEditingController name = TextEditingController();
  final TextEditingController primaryContact = TextEditingController();
  final TextEditingController secondaryContact = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController nrc = TextEditingController();
  final TextEditingController address = TextEditingController();

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
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(9),
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 229, 229),
                      border: Border.all(color: Colors.blue, width: 5)),
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 231, 230, 230)),
                            child: const Icon(
                              Icons.add,
                              color: Colors.blue,
                            ),
                          ),
                          const Text(
                            'Add Photo',
                            style: TextStyle(fontSize: 11),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              inputView('Name', name, 1),
              inputView('Contact (Primaty)', primaryContact, 1),
              inputView('Contact (Secondary)', secondaryContact, 1),
              inputView('E-Mail Address', email, 1),
              inputView('NRC', nrc, 1),
              inputView('Address', address, 5),

              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }

  Widget inputView(
      String name, TextEditingController controller, int maxline) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,color: Colors.blue),
              ),
            ),
            TextField(
              style:const TextStyle(height: 1),
              controller: controller,
              maxLines: maxline,
              decoration:  InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:BorderSide.none
              ),fillColor: const Color.fromARGB(255, 215, 213, 213),filled: true),
            )
          ],
        ),
      ),
    );
  }
}
