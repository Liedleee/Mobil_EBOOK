import 'package:flutter/material.dart';
import '../widgets/book_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> books = [
      {
        'title': 'Before The Coffee Gets Cold',
        'author': 'Toshikazu Kawaguchi',
        'image': 'images/novel1.jpg',
      },
      {
        'title': 'Jejak Cinta Yang Tersembunyi',
        'author': 'Claudia Alves',
        'image': 'images/novel2.jpg',
      },
      {
        'title': 'The Night Circus',
        'author': 'Erin Morgenstern',
        'image': 'images/novel3.jpg',
      },
      {
        'title': 'The Alchemist',
        'author': 'Paulo Coelho',
        'image': 'images/novel4.jpg',
      },
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color(0xFF001F54),
        title: Text(
          'KINGKALEED',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.black.withOpacity(0.5),
                offset: Offset(3, 3),
              ),
              Shadow(
                blurRadius: 20.0,
                color: Colors.white.withOpacity(0.6),
                offset: Offset(-3, -3),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section with Gradient
            Container(
              height: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF001F54), Color(0xFFB0C4DE)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'HALID GACOR Collection',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Silahkan',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFFB0C4DE), // Light Steel Blue
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 40.0,
                      backgroundColor: const Color(0xFFB0C4DE),
                      child: Icon(
                        Icons.book,
                        size: 40.0,
                        color: const Color(0xFF001F54), // Navy
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Section Title with Drop Shadow
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Buku Rekomendasi Gue nih bro',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF001F54), // Navy
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Grid of Books with Shadows
            GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: books.length,
              itemBuilder: (context, index) {
                return BookCard(
                  title: books[index]['title']!,
                  author: books[index]['author']!,
                  image: books[index]['image']!,
                );
              },
            ),
          ],
        ),
      ),

      // Add bottom buttons for additional features
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFF001F54), // Navy background
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.camera_alt, color: Colors.white),
              onPressed: () {
                // Add functionality for taking a photo
                print("Photo button pressed");
              },
            ),
            IconButton(
              icon: const Icon(Icons.video_camera_back, color: Colors.white),
              onPressed: () {
                // Add functionality for recording video
                print("Video button pressed");
              },
            ),
            IconButton(
              icon: const Icon(Icons.mic, color: Colors.white),
              onPressed: () {
                // Add functionality for speech to text
                print("Speech to Text button pressed");
              },
            ),
            IconButton(
              icon: const Icon(Icons.upload_file, color: Colors.white),
              onPressed: () {
                // Add functionality for uploading audio
                print("Upload Audio button pressed");
              },
            ),
          ],
        ),
      ),
    );
  }
}
