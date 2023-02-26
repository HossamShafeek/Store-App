import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_styles.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Cart View',style: AppStyles.textStyle40,),
    );
  }
}
