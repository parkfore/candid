import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
              child: ExtendedImage.network(
                "https://img.lovepik.com/original_origin_pic/18/08/20/c7442ffe5212038a586b7ef490ca2c0e.png_wh300.png",
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "CANDID",
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
