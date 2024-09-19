import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
 // Burada uygulamada home ekranında mavi ekran ile beyaz ekranın birleştiği yerdeki eğri kısmı oluşturuyoruz.
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 20); // En soldaki kıvrımı tasarladık. 
    final lastCurve = Offset(30, size.height - 20); //Ekranın en solundan başlıyor, biraz sağa gidip bükülüyor. 
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy); 
    
    final secondFirstCurve =  Offset(0, size.height -20);
    final secondLastCurve =  Offset(size.width - 30, size.height -20);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy, secondLastCurve.dx, secondLastCurve.dy);

    final thirdFirstCurve =  Offset(size.width, size.height - 20);
    final thirdLastCurve =  Offset(size.width, size.height);
    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy, thirdLastCurve.dx, thirdLastCurve.dy);
    
    path.lineTo(size.width, 0);
    path.close();
    return path; 
    
  }
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    
    throw UnimplementedError();
  }
}