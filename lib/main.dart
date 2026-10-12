import 'package:flutter/material.dart';
import 'pages/menu_list_page.dart';
import 'pages/menu_detail_page.dart';
import 'pages/order_page.dart';

void main() {
  runApp(const MyApp()); // NAMA CLASS DIKEMBALIKAN KE MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kantin Bu Sari', // JUDUL DIUBAH
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          primary: Colors.orange,
        ),
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MenuListPage(),
        '/detail': (context) => const MenuDetailPage(), 
        '/pesan': (context) => const OrderPage(),       
      },
    );
  }
}