import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class LoginSkeleton extends StatelessWidget {
  const LoginSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Container(height: 180, width: double.infinity),
            const SizedBox(height: 20),
            Container(height: 40, width: 200),
            const SizedBox(height: 20),
            Container(height: 50, width: double.infinity),
            const SizedBox(height: 16),
            Container(height: 50, width: double.infinity),
            const SizedBox(height: 20),
            Container(height: 50, width: double.infinity),
          ],
        ),
      ),
    );
  }
}
