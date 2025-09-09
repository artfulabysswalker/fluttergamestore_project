import 'package:flutter/material.dart';
import 'home_page.dart'; // Import your HomePage

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget imageSection = Image.asset(
      '../assets/mstore.jpg',
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Welcome to Old Game Store',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                const Text(
                  'Retro & Classic PS2 Games',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(Icons.videogame_asset, color: Colors.red),
          const Text("PS2"),
        ],
      ),
    );

    Color color = Colors.blue;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: _buildButtonColumn(color, Icons.store, 'ENTER STORE'),
        ),
        _buildButtonColumn(color, Icons.favorite, 'FAVORITES'),
        _buildButtonColumn(color, Icons.info, 'ABOUT'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Explore a collection of legendary PlayStation 2 games that defined a generation. '
        'From RPG classics to epic action adventures, relive the nostalgia of your childhood here.',
        style: TextStyle(color: Colors.white70),
        softWrap: true,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Retro Game Hub'),
        backgroundColor: Colors.grey[900],
      ),
      body: ListView(
        children: [
          imageSection,
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }
}
