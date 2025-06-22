import 'package:flutter/material.dart';
import 'electronics_screen.dart';
import 'jewelery_screen.dart';
import 'mens_clothing_screen.dart';
import 'womens_clothing_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store Categories'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Choose a Category',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            _buildCategoryButton(
              context,
              'Electronics',
              Icons.electrical_services,
              Colors.orange,
              () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ElectronicsScreen(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildCategoryButton(
              context,
              'Jewelery',
              Icons.diamond,
              Colors.pink,
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const JeweleryScreen()),
              ),
            ),
            const SizedBox(height: 20),
            _buildCategoryButton(
              context,
              'Men\'s Clothing',
              Icons.man,
              Colors.blue,
              () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MensClothingScreen(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildCategoryButton(
              context,
              'Women\'s Clothing',
              Icons.woman,
              Colors.purple,
              () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WomensClothingScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
    VoidCallback onPressed,
  ) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
