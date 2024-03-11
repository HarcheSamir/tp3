import 'package:flutter/material.dart';

class PrayerDetailPage extends StatelessWidget {
  final Map<String, dynamic> prayer;

  const PrayerDetailPage({Key? key, required this.prayer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(prayer['name']),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(prayer['image']),
            SizedBox(height: 20),
            Text('Name: ${prayer['name']}'),
            Text('Rakaas: ${prayer['rakaas']}'),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}
