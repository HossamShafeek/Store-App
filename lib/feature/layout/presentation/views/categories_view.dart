import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_styles.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Categories View',style: AppStyles.textStyle40,),
    );
  }
}
