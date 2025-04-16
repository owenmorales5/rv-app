import 'package:flutter/material.dart';
import 'package:rv_app/screens/lyrics.dart';
import 'package:rv_app/services/lirycs.dart';

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
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor:
                      Theme.of(context).colorScheme.surfaceContainerHighest,
                  hintStyle: TextStyle(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.9),
                  ),
                  prefixIconColor:
                      Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          ),
        ),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: loadLyrics(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data found'));
          } else {
            final lyrics = snapshot.data!;
            return ListView.builder(
              shrinkWrap: true,
              itemCount: lyrics.length,
              itemBuilder: (context, index) {
                final lyric = lyrics[index];
                return ListTile(
                  title: Text(lyric['title']),
                  leading: const Icon(Icons.music_note),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    //Navigate to another screen or perform an action
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder:
                            (context) =>
                                LyricsScreen(songId: lyric['id'].toString()),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
