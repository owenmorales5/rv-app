import 'package:flutter/material.dart';
import 'package:rv_app/services/lirycs.dart';

class LyricsScreen extends StatelessWidget {
  final String songId;
  const LyricsScreen({super.key, required this.songId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: getLyricsById(songId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Text('No lyrics found.');
        } else {
          final lyrics = snapshot.data!;
          return Scaffold(
            appBar: AppBar(
              title: Text(lyrics['title']),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {
                    // Add share functionality here
                  },
                ),
              ],
            ),
            body: ListView.builder(
              itemCount: lyrics['lyrics'].length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 25.0,
                  ),
                  child: Text(
                    lyrics['lyrics'][index],
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify,
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
