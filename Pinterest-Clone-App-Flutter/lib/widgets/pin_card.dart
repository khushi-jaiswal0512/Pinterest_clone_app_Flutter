import 'package:flutter/material.dart';
import '../models/pin.dart';

class PinCard extends StatelessWidget {
  final Pin pin;

  const PinCard({super.key, required this.pin});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AspectRatio(
              aspectRatio: pin.width / pin.height,
              child: Image.asset(
                pin.imageUrl,
                fit: BoxFit.cover,
                gaplessPlayback: true,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: const Icon(Icons.broken_image,
                        size: 40, color: Colors.grey),
                  );
                },
              ),
            ),
            
            Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(6, 1, 6, 4),
              alignment: Alignment.centerRight,
              child: const Text(
                '...',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
