import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../navigation/GoRouter.dart';
import 'AuthenticationCubit.dart';

class AuthenticationScreenContent extends StatefulWidget {
  const AuthenticationScreenContent({super.key});

  @override
  State<AuthenticationScreenContent> createState() =>
      _AuthenticationScreenContentState();
}

class _AuthenticationScreenContentState
    extends State<AuthenticationScreenContent> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

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
                    color: const Color(0xFFFFA451),
                    child: Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.106),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Stack(
                          children: [
                            Positioned(
                              top: -10,
                              right: 10,
                              child: Image.asset(
                                'assets/images/fruit_drop_image.png',
                                width: 50,
                                height: 38,
                              ),
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/fruit_basket.png',
                                  width: double.infinity,
                                  height: screenHeight * 0.317,
                                ),
                                const SizedBox(height: 8),
                                Image.asset(
                                  'assets/images/fruits_basket_shadow.png',
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
                          const Text(
                            'What is your firstname?',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 16),

                          TextField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              hintText: "hint",
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),

                          SizedBox(height: screenHeight * 0.051),

                          InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () async {
                              await context
                                  .read<AuthenticationCubit>()
                                  .submitName(_nameController.text);
                              context.go(AppRouts.home);
                            },
                            child: Container(
                              width: double.infinity,
                              height: 56,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFA451),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                'Start Ordering',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.white,
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
