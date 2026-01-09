import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenHeight = constraints.maxHeight;

          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.57,
                  child: ColoredBox(
                    color: Color(0xFFFFA451),
                    child: Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.106),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/fruit_basket.png',
                              ),
                              width: double.infinity,
                              height: 260,
                            ),
                            SizedBox(height: 8),
                            Image(
                              image: AssetImage(
                                'assets/images/fruits_basket_shadow.png',
                              ),
                              width: double.infinity,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.43,
                  width: double.infinity,
                  child: ColoredBox(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(24, 55, 24, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What is your firstname?',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 16),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "aziz",
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          SizedBox(height: 19),
                          InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {},
                            child: Container(
                              width: double.infinity,
                              height: 56,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFA451),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(118, 14, 0, 14),
                                child: Text(
                                  'Start Ordering',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
