import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الدفع عبر شام كاش 💳', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1E1E1E),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              'أهلاً بك، يرجى إتمام عملية التحويل عبر شام كاش لإتمام طلبك فوراً:',
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            SizedBox(height: 20),
            PaymentMethodCard(
              title: 'شام كاش (Sham Cash)',
              description: 'قم بالتحويل عبر تطبيق شام كاش الرقمي، ثم أرسل إيصال التحويل عبر الواتساب لتأكيد الشحن الفوري.',
              icon: Icons.account_balance_wallet,
            ),
            SizedBox(height: 16),
            PaymentMethodCard(
              title: 'رقم الدعم والتواصل لإرسال الإيصال',
              description: 'واتساب خدمة العملاء: 447312938165+',
              icon: Icons.support_agent,
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentMethodCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const PaymentMethodCard({
    super.key,
    required this.title,
    required this.description,
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
                  description,
                  style: const TextStyle(color: Colors.white60, fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
