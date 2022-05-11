import 'package:flutter/material.dart';
import '../model/phone.dart';

class PhoneWidget extends StatelessWidget {
  final Phone phone;
  const PhoneWidget({Key? key, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color(0xFF9181f2),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [Image.asset(phone.image)],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      phone.name,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 36),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(16.0),
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 126, 58, 234),
                                  borderRadius: BorderRadius.circular(200)),
                              child: Text(
                                phone.precio.toString() + 'dolares',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    height: 1.5),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(phone.marca,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
