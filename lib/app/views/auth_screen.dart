import 'package:flutter/material.dart';


class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            bottom: 0,
            child: CustomPaint(
              size: Size(screenWidth, screenHeight - 100),
              painter: CurvePainter(),
            ),
          ),
          Positioned(
            top: 60,
            left: -150,
            right: 0,
            child: Center(
              child: Image.asset('assets/burger 1.png', height: 250),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 110,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Enter your phone number to proceed',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Image.network(
                        'https://flagcdn.com/w20/in.png',
                        width: 20,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 12),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: Text(
                          '+91',
                          style: TextStyle(fontSize: 16, color: Colors.black87),
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your phone number',
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 15,
                              ),
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Terms and Privacy row with InkWell to navigate
                  Center(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Text(
                          'By clicking, I accept the ',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        InkWell(
                          onTap: () {
                            // Navigate to Terms screen
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (_) => TermsScreen()),
                            // );
                          },
                          child: Text(
                            'Terms & Conditions',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue[200],
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Text(
                          ' & ',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        InkWell(
                          onTap: () {
                            // Navigate to Privacy Policy screen
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (_) => PrivacyPolicyScreen(),
                            //   ),
                            // );
                          },
                          child: Text(
                            'Privacy Policy',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue[200],
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 16),

                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color(0xFF8B0000),
                        minimumSize: Size(90, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text('CONTINUE', style: TextStyle(fontSize: 16)),
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

// Your painter class (unchanged)
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final whitePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final maroonPaint = Paint()
      ..color = Color(0xFF7D0A0A)
      ..style = PaintingStyle.fill;

    Path curvePath = Path();
    curvePath.moveTo(0, size.height * 0.4);

    curvePath.cubicTo(
      size.width * 0.07,
      size.height * 0.19,
      size.width * 0.6,
      size.height * 0.37,
      size.width,
      size.height * 0.15,
    );

    curvePath.lineTo(size.width, 0);
    curvePath.lineTo(0, 0);
    curvePath.close();

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), maroonPaint);

    canvas.save();
    canvas.clipPath(curvePath);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), whitePaint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
