import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen(), debugShowCheckedModeBanner: false));
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Container(color: Color(0xFF8B0000)),

          // Top-left circle
          Positioned(
            top: 30,
            left: -40,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                shape: BoxShape.circle,
              ),
            ),
          ),

          // Top-right circle
          Positioned(
            top: 80,
            right: -30,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                shape: BoxShape.circle,
              ),
            ),
          ),

          // Small dot
          Positioned(
            top: 130,
            right: 30,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.white60,
                shape: BoxShape.circle,
              ),
            ),
          ),

          // Main content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 2),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Outer circle
                    Container(
                      width: 260,
                      height: 260,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF4B183),
                      ),
                    ),
                    // Inner circle
                    Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amberAccent,
                      ),
                    ),
                    // Tilted Lottie animation (like a stunt wheelie)
                    Transform.translate(
                      offset: Offset(-30, 0), // move 20 pixels to the left
                      child: Transform.rotate(
                        angle: -0.4, // tilt forward
                        child: Lottie.network(
                          'https://lottie.host/4ad0b60d-eade-44d7-a8f1-06c92ab189c8/aDyyU2xdBH.json',
                          height: 400,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Spacer(),
              Text(
                '🍱 Bringing Hot Meals',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'to Your Doorstep, Fast & Fresh!',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 30),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == 0 ? Colors.white : Colors.white54,
                    ),
                  );
                }),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
