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

 // --- BODY UTAMA ---
      body: Column(
        children: [
          const SizedBox(height: 20),
          
          // 1. JUDUL
          const Text(
            "Praktikkum 2",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Halooo Coba Statefull Widget",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          
          const SizedBox(height: 40),