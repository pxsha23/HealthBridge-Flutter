import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          serviceCard(Icons.calendar_today, "Daily Appointment Booking", "Book appointments effortlessly."),
          serviceCard(Icons.receipt_long, "Daily Procedure Reports", "Access health reports conveniently."),
          serviceCard(Icons.attach_money, "Daily Invoice", "Stay on track with your medical bills."),
        ],
      ),
    );
  }

  Widget serviceCard(IconData icon, String title, String subtitle) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(icon, size: 40, color: Color(0xFF78C5C9)),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(subtitle, style: TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
