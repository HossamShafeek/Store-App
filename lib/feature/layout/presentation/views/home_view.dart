import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:store_app/config/icons/icons_broken.dart';
import 'package:store_app/core/utils/app_colors.dart';
import 'package:store_app/core/utils/app_constants.dart';
import 'package:store_app/core/utils/app_styles.dart';
import 'package:store_app/feature/layout/presentation/views/widgets/search_text_field.dart';
import 'package:store_app/feature/layout/presentation/views/widgets/welcome_message_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: AppConstants.defaultPadding,
        left: AppConstants.defaultPadding,
        right: AppConstants.defaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          WelcomeMessagesWidget(),
          SearchTextField(),
          HomeProductGridView(),
        ],
      ),
    );
  }
}

class HomeProductGridView extends StatelessWidget {
  const HomeProductGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StaggeredGridView.countBuilder(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        physics: const BouncingScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.w,
        itemCount: 16,
        staggeredTileBuilder: (index) {
          return StaggeredTile.count(1, index.isEven ? 1.5 : 1.3);
        },
        itemBuilder: (context, index) =>const  HomeProductGridViewItem(),
      ),
    );
  }
}

class HomeProductGridViewItem extends StatelessWidget {
  const HomeProductGridViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        color: AppColors.grey50,
      ),
      child: Padding(
        padding:  EdgeInsets.all(8.h),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.h),
                ),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl:
                  'https://images.hindustantimes.com/tech/img/2022/08/20/original/Untitled_design_-_2022-08-20T143510.743_1660986921934.png',
                  placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(
                    strokeWidth: 1.5,
                  )),
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                    color: AppColors.deepOrange,
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 5.h),
              child: Text(
                'Iphone 14 Pro Max 256g',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.textStyle16,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${65000} EGP',
                  style: AppStyles.textStyle14.copyWith(
                    color: AppColors.deepOrange,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    IconBroken.Buy,
                    color: AppColors.deepOrange,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
