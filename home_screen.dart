import 'package:flutter/material.dart';
import 'package:health_bridge/widgets/navbar.dart';
import 'package:health_bridge/widgets/services_screen.dart';
import '../widgets/book_now_card.dart'; // Ensure the path is correct

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Navbar(), // Custom Navbar
                HeroSection(), // Top section with gradient and text
                ServicesSection(), // Services section with cards
                FooterSection(), // Bottom footer
              ],
            ),
          ),
          BookNowCard(), // Floating "Book Now" card
        ],
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF78C5C9), Color(0xFF6DB3B8)], 
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Providing an Exceptional\nPatient Experience",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Welcome, where exceptional patient experiences are our priority. With compassionate care...",
            style: TextStyle(fontSize: 16, color: Colors.white70),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            ),
            child: Text("See Services"),
          ),
        ],
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 177, 221, 223),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Health', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(
            "We are honored to be a part of your healthcare journey and committed to delivering compassionate, personalized care.",
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About Us', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Home'),
                  Text('Work With Us'),
                  Text('Terms & Conditions'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Services', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Search Terms'),
                  Text('Privacy Policy'),
                  Text('Suppliers'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contact Us', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('📍 123, London Bridge Street, London'),
                  Text('📧 support@care.com'),
                  Text('📞 (+012) 3456 789'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
