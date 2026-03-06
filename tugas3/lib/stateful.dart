import 'package:flutter/material.dart';

class CounterManager extends StatefulWidget {
  const CounterManager({super.key});

@override
  State<CounterManager> createState() => _CounterManagerState();
}

class _CounterManagerState extends State<CounterManager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA), // Warna background abu-abu sangat terang

 // --- APPBAR (Tombol Back & Setting melayang) ---
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Bikin transparan agar menyatu dengan background
        elevation: 0, // Hilangkan bayangan
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () {
            // Aksi tombol back
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black87),
            onPressed: () {
              // Aksi tombol setting
            },
          ),
        ],
      ),
