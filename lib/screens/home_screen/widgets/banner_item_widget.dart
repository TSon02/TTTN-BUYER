import 'package:flutter/material.dart';

class BannerItemWidget extends StatelessWidget {
  const BannerItemWidget({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          imageUrl,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 24,
                ),
                Text(
                  'LUXURY',
                  style: TextStyle(
                    fontFamily: "Bodoni",
                    fontSize: 38,
                    fontStyle: FontStyle.italic,
                    color: Colors.blueGrey[50],
                    height: 0.1,
                    letterSpacing: 1.21,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                Text(
                  'FASHION',
                  style: TextStyle(
                    fontFamily: "Bodoni",
                    fontSize: 38,
                    fontStyle: FontStyle.italic,
                    color: Colors.blueGrey[50],
                    letterSpacing: 1.21,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: '&',
                        style: TextStyle(
                          fontFamily: "Bodoni",
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          height: 1,
                          letterSpacing: 1.21,
                        ),
                      ),
                      TextSpan(
                        text: 'ACCESSORIES',
                        style: TextStyle(
                          height: 1,
                          fontFamily: "Bodoni",
                          fontSize: 38,
                          fontStyle: FontStyle.italic,
                          color: Colors.blueGrey[50],
                          letterSpacing: 1.21,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Positioned(
          bottom: 120,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(
                0x66000000,
              ),
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Text(
              'EXPLORE COLLECTION',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
