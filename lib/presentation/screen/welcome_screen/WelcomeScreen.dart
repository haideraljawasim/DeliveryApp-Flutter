import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../navigation/GoRouter.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
                        child: Stack(
                          children: [
                            Positioned(
                              top: -10,
                              right: 10,
                              child: Image(
                                image: AssetImage(
                                  'assets/images/fruit_drop_image.png',
                                ),
                                width: 50,
                                height: 38,
                              ),
                            ),
                            Column(
                              children: [
                                Image(
                                  image: AssetImage(
                                    'assets/images/fruits_basket_still.png',
                                  ),
                                  width: double.infinity,
                                  height: screenHeight * 0.317,
                                ),
                                SizedBox(height: 8),
                                Image(
                                  image: AssetImage(
                                    'assets/images/fruits_basket_still_shadow.png',
                                  ),
                                  width: double.infinity,
                                ),
                              ],
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
                      padding: EdgeInsets.fromLTRB(
                        24,
                        screenHeight * 0.068,
                        24,
                        0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Get The Freshest Fruit Salad Combo',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: screenHeight * 0.071),
                          InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {
                              context.go(AppRouts.authentication);
                            },
                            child: Container(
                              width: double.infinity,
                              height: 56,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFA451),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 14, 0, 14),
                                child: Text(
                                  'Let’s Continue',
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
