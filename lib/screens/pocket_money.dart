import 'package:flutter/material.dart';

class PocketMoneyView extends StatefulWidget {
  const PocketMoneyView({super.key});

  @override
  State<PocketMoneyView> createState() => _PocketMoneyViewState();
}

String name = '';

class _PocketMoneyViewState extends State<PocketMoneyView> {
  @override
  Widget build(BuildContext context) {
    List<String> popUpStringArray = [
      'aung aung',
      'aye aye',
      'htun htun',
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          'Pocket Money',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Current Amount',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue),
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.orange)),
                  child: const Text(
                    '100,000',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue),
                  ),
                )),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'MMK',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'New Top Up',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: Colors.orange),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Text(
                    'Request',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Pocket Money for my child',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Select your child',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue),
            ),
          
            Container(
                height: 55,
                width: MediaQuery.of(context).size.width - 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.orange)),
                child: ListTile(
                  title: Text(name),
                  trailing: PopupMenuButton(
                    position: PopupMenuPosition.over,
                    iconSize: 30,
                    icon: const Icon(Icons.arrow_drop_down),
                    itemBuilder: (context) => popUpStringArray
                        .map<PopupMenuItem>(
                            (e) => PopupMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onSelected: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Fill the amount',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width - 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.orange)),
              child: const Text(
                '10000',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue),
              ),
            ),


            const SizedBox(height: 60,),
            
            Center(
              child: Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.orange)),
                child: const Center(
                  child: Text(
                    'PAY',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
