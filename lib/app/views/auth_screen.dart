import 'package:flutter/material.dart';


class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background with curved shape
          Container(
            color: Color(0xFF8B0000), // Dark red color
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 400),
              painter: CurvePainter(),
            ),
          ),
          // Burger image
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Center(
              child: Image.network(
                'https://via.placeholder.com/200', // Replace with actual burger image URL
                height: 200,
              ),
            ),
          ),
          // Phone number input and other elements
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Enter your phone number to proceed',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              'https://flagcdn.com/w20/in.png', // Indian flag
                              width: 20,
                            ),
                            SizedBox(width: 8),
                            Text(
                              '+91',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your phone number',
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'By clicking, I accept the Terms & Conditions & Privacy Policy',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Custom painter for the curved background
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    var path = Path();
    path.lineTo(0, size.height * 0.75);
   
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.4,
      size.width+400,
      size.height * 0.55,
    );
       
     
    
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}