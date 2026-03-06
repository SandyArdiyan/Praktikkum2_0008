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

             // 2. KARTU GAMBAR (Di tengah)
          Expanded(
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 20,
                      spreadRadius: 5,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),

         // Gambar dimasukkan ke dalam ClipRRect agar ujungnya ikut melengkung
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    // PENTING: Pastikan letak dan nama file fotomu benar di sini!
                    "public/images/foto.jpg", 
                    fit: BoxFit.cover,
                    // Error builder agar tidak blank jika gambar gagal dimuat
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.blue.shade100,
                      child: const Center(
                        child: Text("Gambar tidak ditemukan", textAlign: TextAlign.center,),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

            // 3. BAGIAN BAWAH (Tombol & Data Diri)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              children: [
                // Tombol Cancel & Save
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          side: const BorderSide(color: Colors.grey, width: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Cancel",
                          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15), // Jarak antar tombol
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF001F5C), // Warna biru dongker
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Save",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                 const SizedBox(height: 30),
                
                // Text NIM dan Nama di paling bawah
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "20230140008",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    Text(
                      "Sandy Ardiyan",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}