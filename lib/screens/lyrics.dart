import 'package:flutter/material.dart';

class LyricsScreen extends StatelessWidget {
  const LyricsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Presencia'),
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
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Text(
            textAlign: TextAlign.justify,
            'Suspendisse potenti. Aenean risus eros, eleifend ac lectus vel, gravida consequat quam. Vestibulum vel pulvinar turpis, eu ullamcorper ligula. Duis placerat vitae nunc eget feugiat. Phasellus pharetra lectus eget est tempor, sed varius est cursus. Fusce mattis sapien sem, eu egestas ligula varius non. Pellentesque gravida urna sed est ultricies blandit. Curabitur fermentum efficitur ligula, vulputate gravida nisi gravida in. Etiam vitae dolor suscipit, aliquet eros nec, fermentum odio. Quisque efficitur, tellus vitae aliquam sagittis, leo urna luctus erat, sit amet ultrices dolor leo id nisl. Nulla facilisi. Quisque placerat sit amet metus id tempus. Nunc ac vulputate massa. Phasellus pulvinar, risus a pharetra fringilla, orci diam maximus erat, at eleifend est ex at justo. Nulla vel orci lectus.',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
