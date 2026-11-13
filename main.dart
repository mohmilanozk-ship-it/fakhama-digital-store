import 'package:flutter/material.dart';

void main() {
  runApp(const FakhamaStoreApp());
}

class FakhamaStoreApp extends StatelessWidget {
  const FakhamaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'متجر فخامة ستور',
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar', 'AE'),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      theme: ThemeData(
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: const Color(0xFF121212),
        fontFamily: 'Cairo',
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('متجر فخامة ستور ⚡', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1E1E1E),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'أهلاً بك، اختر لعبتك أو خدمتك المفضلة للشحن:',
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: const [
                  StoreCard(title: 'شدات ببجي موبايل', icon: Icons.sports_esports),
                  StoreCard(title: 'جواهر فري فاير', icon: Icons.local_fire_department),
                  StoreCard(title: 'بطاقات جوجل بلاي', icon: Icons.card_giftcard),
                  StoreCard(title: 'شحن رصيد سيريتيل/شام', icon: Icons.phone_android),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoreCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const StoreCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.amber.withOpacity(0.3)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48, color: Colors.amber),
          const SizedBox(height: 12),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
