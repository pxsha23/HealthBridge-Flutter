import 'package:flutter/material.dart';

class BookNowCard extends StatelessWidget {
  const BookNowCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 100,
      top: 180,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: EdgeInsets.all(16),
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Text(
                "Book Now",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF78C5C9)),
                child: Text("Book Appointment"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
