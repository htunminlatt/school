import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          'Profile',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              padding:const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
              ),
              child: const Icon(Icons.add),
            ),
          )
        ],
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: 2,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.family_restroom,
                        color: Colors.orange,
                        size: 30,
                      ),

                      const SizedBox(
                        width: 10,
                      ),
                      // profile lsit
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'U Hla',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              'Father',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 13),
                            ),

                            //phone
                            Row(
                              children: [
                                Icon(
                                  Icons.phone_enabled,
                                  color: Colors.blue,
                                ),
                                Text(
                                  '+ 95 00000000',
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 30,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                ),
                            onPressed: () {},
                            child: const Text(
                              'Detail',
                              style: TextStyle(color: Colors.black),
                            )),
                      )
                    ],
                  ),
                ),

                //divider
                const Divider(color: Colors.black,thickness: 0.5,)
              ],
            );
          }),
    );
  }
}
