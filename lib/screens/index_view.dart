import 'package:flutter/material.dart';
import 'package:rv_app/screens/lyrics.dart';
import 'package:rv_app/services/lirycs.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  List<String> selectedSongsIds = [];
  late Future<List<Map<String, dynamic>>> lyricsFuture;
  @override
  void initState() {
    super.initState();
    lyricsFuture = loadLyrics(); // Se carga una sola vez
  }

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
        future: lyricsFuture,
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
                  leading:
                      selectedSongsIds.contains(lyric['id'].toString())
                          ? const Icon(Icons.check)
                          : const Icon(Icons.music_note),
                  trailing:
                      selectedSongsIds.isNotEmpty
                          ? null
                          : const Icon(Icons.arrow_forward_ios),
                  selected: selectedSongsIds.contains(lyric['id'].toString()),
                  onLongPress: () {
                    setState(() {
                      selectedSongsIds.add(lyric['id'].toString());
                    });
                  },
                  onTap: () {
                    if (selectedSongsIds.isNotEmpty) {
                      final id = lyric['id'].toString();

                      // Verificamos si ya existe el ID en el arreglo
                      final exists = selectedSongsIds.any(
                        (e) => e.toString() == id,
                      );

                      if (exists) {
                        selectedSongsIds.removeWhere((e) => e.toString() == id);
                      } else {
                        selectedSongsIds.add(id);
                      }

                      setState(() {});
                      return;
                    }

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
