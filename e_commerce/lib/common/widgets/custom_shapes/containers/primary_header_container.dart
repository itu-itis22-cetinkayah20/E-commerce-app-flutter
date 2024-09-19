import 'package:e_commerce/common/widgets/custom_shapes/containers/custom_circular_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../curved_edges/curved_edged_widget.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MyCurvedEdgedWidget(child: Container(
                  color: TColors.primary,
                  padding: const EdgeInsets.all(0),
                  child: SizedBox(
                    height: 400,
                    child: Stack(
                      children: [
                        Positioned(
                          top: -150, // Üste doğru kaydırma
                          right: -250, // Sağa doğru kaydırma
                          child: CustomCircularContainer(
                            backgroundColor: TColors.textWhite.withOpacity(0.1),
                          ),
                        ),
                        Positioned(
                          top: 100, // Üste doğru kaydırma
                          right: -300, // Sağa doğru kaydırma
                          child: CustomCircularContainer(
                            backgroundColor: TColors.textWhite.withOpacity(0.1),
                          ),
                        ),
                        child, // Bu sayede stackin üstüne yeni bir widget ekleyebiliriz.
                      ],
                      
                    ),
                  )),);
  }
}