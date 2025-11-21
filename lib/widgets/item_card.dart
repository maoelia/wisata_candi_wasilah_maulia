import 'package:flutter/material.dart';
import 'package:wisata_candi_wasilah_maulia/models/candi.dart';
import 'package:wisata_candi_wasilah_maulia/screens/detail_screen.dart';

class ItemCard extends StatelessWidget {
  //TODO: 1. Deklarasikan variabel yang dibutuhkan dan pasang pada konstruktor
  final Candi candi;

  const ItemCard({super.key,
  required this.candi,
  });

  @override
  Widget build(BuildContext context) {
    //TODO: 6. Implementasi routing ke DetailScreen
    return InkWell(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) => DetailScreen(candi: candi),
          ),
      );
    },
      child: Card(
        // TODO: 2. Tetapkan parameter shape, margin, dan elevation dari Cari
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
      )
          //TODO: 3. Buat Image sebagai anak dari Colum
          //TODO: 4. Buat Text sebagai anak dari column
          //TODO: 5. Buat Text sebagai anak dari column
        ],
      ),
    );
  }
}


