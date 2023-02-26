import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_styles.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile View',style: AppStyles.textStyle40,),
    );
  }
}
