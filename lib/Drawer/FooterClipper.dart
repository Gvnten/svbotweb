import 'package:flutter/cupertino.dart';

class FooterClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 180);

    var firstControlPoint = Offset(size.height / 4, size.width);
    var firstEndPoint = Offset(size.height / 2.25, size.width - 30.0);
    path.quadraticBezierTo(
      firstEndPoint.dy,
      firstEndPoint.dx,
      firstControlPoint.dy,
      firstControlPoint.dx,
    );

    var secondControlPoint = Offset(
      size.height - (size.height / 3.25),
      size.width - 65,
    );
    var secondEndPoint = Offset(size.height, size.width - 40);
    path.quadraticBezierTo(
      secondEndPoint.dy,
      secondEndPoint.dx,
      secondControlPoint.dy,
      secondControlPoint.dx,
    );

    path.lineTo(size.width, size.height - 40);

    path.lineTo(0.0, size.width);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}
