import 'package:flutter/material.dart';
import '/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: "Grand Theft Auto: San Andreas",
      price: 80,
      image: "../assets/gta_sa.jpg",
      stock: 10,
      rating: 4.9,
      description:
          "The legendary open-world game featuring CJs journey through Los Santos, San Fierro, and Las Venturas. Freedom, action, and story all in one.",
    ),

    Item(
      name: "Final Fantasy X",
      price: 75,
      image: "../assets/ffx.jpg",
      stock: 8,
      rating: 4.8,
      description:
          "A timeless JRPG with the emotional story of Tidus and Yuna. Stunning visuals for its time and a turn-based battle system that set a standard.",
    ),

    Item(
      name: "God of War",
      price: 70,
      image: "../assets/gow1.jpg",
      stock: 12,
      rating: 4.7,
      description:
          "Kratos continues his brutal war against the gods of Olympus. Epic boss fights and fast-paced hack-and-slash combat.",
    ),

    Item(
      name: "Metal Gear Solid 3: Snake Eater",
      price: 72,
      image: "../assets/mgs3.jpg",
      stock: 9,
      rating: 4.8,
      description:
          "A Cold War-era stealth masterpiece from Hideo Kojima. Follow Naked Snake through survival, espionage, and betrayal.",
    ),

    Item(
      name: "Resident Evil 4",
      price: 65,
      image: "../assets/re4.jpg",
      stock: 11,
      rating: 4.9,
      description:
          "The revolutionary survival horror that introduced over-the-shoulder aiming. Leon S. Kennedy fights to rescue the president’s daughter.",
    ),

    Item(
      name: "Shadow of the Colossus",
      price: 6000,
      image: "../assets/sotc.jpg",
      stock: 7,
      rating: 4.7,
      description:
          "A hauntingly beautiful adventure where you battle 16 towering colossi to save a loved one. Minimalist yet emotionally powerful.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("game store"),
        backgroundColor: Colors.grey[900],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              elevation: 3,
              color: Colors.grey[850],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Hero(
                      tag: item.name,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                        child: Image.asset(
                          item.image,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "USD ${item.price}", 
                          style: const TextStyle(color: Colors.white70),
                        ),
                        Text(
                          "Stock: ${item.stock}", 
                          style: const TextStyle(color: Colors.white70),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.amber,
                            ),
                            Text(
                              item.rating.toString(),
                              style: const TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.grey[900],
        child: const Text(
          "nama mathew , nim 2132",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, color: Colors.white70),
        ),
      ),
    );
  }
}
