import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تسجيل الدخول / إنشاء حساب 🔐', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1E1E1E),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'أهلاً بك في متجر فخامة ستور، يرجى إدخال بياناتك للمتابعة:',
              style: TextStyle(color: Colors.white70, fontSize: 15),
            ),
            const SizedBox(height: 24),
            // حقل البريد الإلكتروني
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'البريد الإلكتروني',
                labelStyle: const TextStyle(color: Colors.amber),
                prefixIcon: const Icon(Icons.email, color: Colors.amber),
                filled: true,
                fillColor: const Color(0xFF1E1E1E),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            const SizedBox(height: 16),
            // حقل رقم الجوال
            TextField(
              keyboardType: TextInputType.phone,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'رقم الجوال',
                labelStyle: const TextStyle(color: Colors.amber),
                prefixIcon: const Icon(Icons.phone, color: Colors.amber),
                filled: true,
                fillColor: const Color(0xFF1E1E1E),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            const SizedBox(height: 16),
            // حقل كلمة السر
            TextField(
              obscureText: true,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'كلمة المرور',
                labelStyle: const TextStyle(color: Colors.amber),
                prefixIcon: const Icon(Icons.lock, color: Colors.amber),
                filled: true,
                fillColor: const Color(0xFF1E1E1E),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            const SizedBox(height: 24),
            // زر الدخول أو التسجيل
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {
                // عملية حفظ الحساب أو التحقق
              },
              const Text(
                'تسجيل / إنشاء الحساب',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
