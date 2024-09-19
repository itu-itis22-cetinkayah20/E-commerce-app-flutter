// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/common/widgets/custom_shapes/containers/custom_circular_container.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column( //Column değil de Container yaparsak childrenlar eklenmeden mevcut designı görebiliriz. 
                children: [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





// print("Size W is ${MediaQuery.of(context).size.width}");
// print("Size H is ${MediaQuery.of(context).size.height}");