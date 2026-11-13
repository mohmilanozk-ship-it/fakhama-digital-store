import 'package:flutter/material.dart';

class WhatsAppSupportWidget extends StatelessWidget {
  const WhatsAppSupportWidget({super.key});

  // رقم الواتساب المعتمد للدعم الفني وتأكيد التحويلات
  final String whatsappNumber = "+447312938165";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.green.withOpacity(0.5)),
      ),
      child: Row(
        children: [
          const Icon(Icons.support_agent, size: 40, color: Colors.greenAccent),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'الدعم الفني وتأكيد الشحن',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 4),
                Text(
                  'واتساب: $whatsappNumber',
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            onPressed: () {
              // هنا يتم ربط رابط فتح محادثة الواتساب مباشرة
              // https://wa.me/447312938165
            },
            child: const Text('تواصل'),
          ),
        ],
      ),
    );
  }
}
