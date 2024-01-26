import 'package:flutter/material.dart';

class AnnouncementView extends StatelessWidget {
  const AnnouncementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          'Announcement',
          style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
        ),
      ),
      body: const Padding(
        padding:  EdgeInsets.all(18.0),
        child:  CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Text('Today',style: TextStyle(color: Colors.blue),),
            ),
            SliverToBoxAdapter(
              child: MyListview(text: 'today',),
            ),
            
            SliverToBoxAdapter(child: SizedBox(height: 20,),),

            SliverToBoxAdapter(
              child: Text('Earlier this year',style: TextStyle(color: Colors.blue),),
            ),
            SliverToBoxAdapter(
              child: MyListview(text: 'earlier',),
            ),
          ],
        ),
      ),
    );
  }
}

class MyListview extends StatelessWidget {
  const MyListview({
    super.key,required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.all(10),
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.orange)),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: Text(
                    'about about about about about about about about about about about about about about about about about about about about about about about about about about about about about about about about',
                    style: TextStyle(fontSize: 12),
                    softWrap: true,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Visibility(
                  visible: text == 'today' ? true : false,
                  child: const Text(
                    '12-Dec-2024',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
          );
        });
  }
}
