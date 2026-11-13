import 'package:flutter/material.dart';

class VipLevelsScreen extends StatelessWidget {
  const VipLevelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('عضويات ومستويات VIP 👑', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1E1E1E),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              'كلما زادت شحناتك، ارتفع مستواك وحصلت على مزايا حصرية وأسعار خاصة!',
              style: TextStyle(color: Colors.white70, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            VipLevelCard(
              title: 'VIP 1 (المستوى العادي)',
              description: 'بداية انطلاقك في المتجر.',
              icon: Icons.star_border,
              color: Colors.grey,
            ),
            SizedBox(height: 12),
            VipLevelCard(
              title: 'Vip برونزي',
              description: 'خصومات خاصة على شدات ببجي.',
              icon: Icons.shield,
              color: Color(0xFFCD7F32),
            ),
            SizedBox(height: 12),
            VipLevelCard(
              title: 'Vip فضي',
              description: 'أولوية قصوى في تنفيذ الطلبات عبر الشام كاش.',
              icon: Icons.shield,
              color: Colors.blueGrey,
            ),
            SizedBox(height: 12),
            VipLevelCard(
              title: 'Vip ذهبي',
              description: 'عروض حصرية وبونص إضافي مع كل شحنة.',
              icon: Icons.military_tech,
              color: Colors.amber,
            ),
            SizedBox(height: 12),
            VipLevelCard(
              title: 'Vip بلاتيني',
              description: 'خدمة عملاء VIP وتخفيضات كبرى.',
              icon: Icons.diamond,
              color: Colors.cyanAccent,
            ),
            SizedBox(height: 12),
            VipLevelCard(
              title: 'Vip محلات',
              description: 'مخصص لأصحاب المحلات وبأسعار الجملة.',
              icon: Icons.store,
              color: Colors.orangeAccent,
            ),
            SizedBox(height: 12),
            VipLevelCard(
              title: 'Vip بوتات',
              description: 'ربط آلي وتسهيل الطلبات الكبيرة.',
              icon: Icons.smart_toy,
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}

class VipLevelCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  const VipLevelCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withOpacity(0.5)),
      ),
      child: Row(
        children: [
          Icon(icon, size: 40, color: color),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(color: Colors.white60, fontSize: 13),
                ),
              ],
            ),
          ),
          const Icon(Icons.check_circle, color: Colors.greenAccent, size: 20),
        ],
      ),
    );
  }
}
