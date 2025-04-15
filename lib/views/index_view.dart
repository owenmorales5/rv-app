import 'package:flutter/material.dart';
import 'package:rv_app/screens/lyrics.dart';

class IndexView extends StatefulWidget {
  const IndexView({super.key});

  @override
  State<IndexView> createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.book, size: 30),
                      SizedBox(width: 10),
                      Text(
                        'Digital',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              // INPUT SEARCH
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Expanded(
        child: ListView(
          children:
              List<int>.generate(
                50,
                (int index) => index * index,
                growable: true,
              ).map((int index) {
                return ListTile(
                  title: Text('Item $index'),
                  leading: const Icon(Icons.music_note),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    //Navigate to another screen or perform an action
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LyricsScreen()),
                    );
                  },
                );
              }).toList(),
        ),
      ),
    );
  }
}
