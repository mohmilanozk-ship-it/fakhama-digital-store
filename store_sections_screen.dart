import 'package:flutter/material.dart';

class StoreSectionsScreen extends StatelessWidget {
  const StoreSectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أقسام الألعاب والتطبيقات 🎮', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1E1E1E),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              'قسم الألعاب الرقمية:',
              style: TextStyle(color: Colors.amber, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            SectionItemCard(
              title: 'شدات ببجي موبايل (PUBG Mobile)',
              price: 'شحن فوري عبر شام كاش',
              icon: Icons.sports_esports,
            ),
            SizedBox(height: 12),
            SectionItemCard(
              title: 'جواهر فري فاير (Free Fire)',
              price: 'شحن فوري عبر شام كاش',
              icon: Icons.local_fire_department,
            ),
            SizedBox(height: 24),
            Text(
              'قسم التطبيقات والبطاقات:',
              style: TextStyle(color: Colors.amber, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            SectionItemCard(
              title: 'بطاقات جوجل بلاي وآيتونز',
              price: 'متوفر بجميع الفئات',
              icon: Icons.card_giftcard,
            ),
            SizedBox(height: 12),
            SectionItemCard(
              title: 'شحن أرصدة وخدمات رقمية',
              price: 'خدمة سريعة ومضمونة',
              icon: Icons.phone_android,
            ),
          ],
        ),
      ),
    );
  }
}

class SectionItemCard extends StatelessWidget {
  final String title;
  final String price;
  final IconData icon;

  const SectionItemCard({
    super.key,
    required this.title,
    required this.price,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.amber.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          Icon(icon, size: 40, color: Colors.amber),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: const TextStyle(color: Colors.white60, fontSize: 13),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, color: Colors.amber, size: 16),
        ],
      ),
    );
  }
}
