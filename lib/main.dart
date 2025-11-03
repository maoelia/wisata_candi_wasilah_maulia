import 'package:flutter/material.dart';
import 'package:wisata_candi_wasilah/data/candi_data.dart';
import 'package:wisata_candi_wasilah/screens/profile_screen.dart';
import 'package:wisata_candi_wasilah/screens/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Candi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // menampilkan profil
      home: ProfileScreen(),
      // home: DetailScreen(candi : candiList[0]),
    );
  }
}