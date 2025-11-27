import 'package:flutter/material.dart';
import 'package:wisata_candi_wasilah_maulia/screens/favorite_screen.dart';
import 'package:wisata_candi_wasilah_maulia/screens/home_screen.dart';
import 'package:wisata_candi_wasilah_maulia/screens/search_screen.dart';
import 'package:wisata_candi_wasilah_maulia/screens/profile_screen.dart';
import 'package:wisata_candi_wasilah_maulia/screens/sign_up_screen.dart';
import 'package:wisata_candi_wasilah_maulia/screens/sign_in_screen.dart';
import 'package:wisata_candi_wasilah_maulia/data/candi_data.dart';
import 'package:wisata_candi_wasilah_maulia/screens/detail_screen.dart';
import 'widgets/profile_info_item.dart';

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
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.deepPurple),
            titleTextStyle: TextStyle(
              color: Colors.deepPurple,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          colorScheme:
          ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
            primary: Colors.deepPurple,
            surface: Colors.deepPurple[50],
          ),
          useMaterial3: true,
        ),
        // home: ProfileScreen(),
        //home: DetailScreen(candi : candiList[0]),
        // home: SignInScreen(),
        //home: SignUpScreen(),
        // home: SearchScreen(),
        // home: HomeScreen(),

        home: MainScreen,
        initialRoute: '/',
        routes: {
          '/homescreen': (context) => const MainScreen(),
          '/signin': (context) => SignInScreen(),
          '/signup': (context) => SignUpScreen(),
        },
    );
  }
}
