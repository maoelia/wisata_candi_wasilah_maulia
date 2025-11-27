import 'package:flutter/material.dart';
import 'package:wisata_candi_wasilah_maulia/models/candi.dart';
import 'package:wisata_candi_wasilah_maulia/screens/detail_screen.dart';
import 'package:wisata_candi_wasilah_maulia/data/candi_data.dart';

// contoh list favorit (kalau kamu belum pakai provider)
List<Candi> favorites = candiList;

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: favorites.isEmpty
          ? const Center(child: Text('Belum ada candi favorit!'))
          : ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final candi = favorites[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(candi: candi),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        candi.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          candi.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          candi.location,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.favorite, color: Colors.red),
                    onPressed: () {
                      setState(() {
                        favorites.remove(candi);
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
