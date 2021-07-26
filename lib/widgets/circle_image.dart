import 'package:flutter/cupertino.dart';

class CircleImage extends StatelessWidget {
  final double size;
  final double rudius;
  final String imageUrl;

  const CircleImage({
    required this.size,
    required this.rudius,
    required this.imageUrl,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.network(imageUrl).image,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(rudius),
      ),
    );
  }
}
