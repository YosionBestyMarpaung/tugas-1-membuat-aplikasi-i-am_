import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "I Am Hungry",
            style: TextStyle(
              fontWeight: FontWeight.bold, // Menebalkan teks
              fontSize: 23
            ),
            ),
          backgroundColor: const Color.fromARGB(255, 210, 204, 134),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //menampilkan gambar burger dari folder asssets
              Image.asset('assets/burger.png', width: 230),
              const SizedBox(height: 20), //memberi jarak antara gambar

              //container dengan dekorasi dan teks deskripsi burger
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.green.shade400, Colors.green.shade600],//untuk gradiasi hijau muda ke hijau tua
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(25), //membuat sudut melengkung
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black, //membuat bayangan hitam
                      blurRadius: 6,
                      offset: Offset(4, 8),
                    ),
                  ]
                ),
              
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Menghindari Column memenuhi seluruh ruang
                  crossAxisAlignment: CrossAxisAlignment.center, // Pusatkan secara horizontal
                  children: [
                    Text(
                      "Roti bun-nya lembut, sedikit manis, dengan bagian atas yang bertabur wijen mengilap seperti bintang di langit malam. Begitu tanganmu menggenggamnya, sensasi kehangatan dari roti ini sudah cukup untuk membangkitkan rasa lapar🤤🍔.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87, //membuat warna teks gelap
                      ),
                      textAlign: TextAlign.center, // memPusatkan teks dalam container
                    ),
                  ],
                ),
              ), // Tambahkan koma di sini
            ],
          ),
        ),
      ),
    );
  }
}
