import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/config/icons/icons_broken.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/app_strings.dart';
import 'package:store_app/core/utils/app_styles.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {

  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: TextField(
        controller: searchController,
        onChanged: (value) {

        },
        cursorColor: AppColors.deepOrange,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintMaxLines: 1,
          hintText: AppStrings.findYourProduct,
          hintStyle: AppStyles.textStyle16.copyWith(
            color: AppColors.grey,
          ),
          suffixIconColor: AppColors.grey,
          fillColor: AppColors.grey50,
          filled: true,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.h),
            borderSide: BorderSide.none,
          ),
          suffixIcon: Container(
            margin: EdgeInsets.all(6.h),
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(6.h),
            ),
            child: const Icon(IconBroken.Search,color: AppColors.deepOrange,),
          ),
        ),
      ),
    );
  }
}