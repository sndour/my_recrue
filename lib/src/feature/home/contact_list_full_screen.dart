import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_recrue/src/common_widgets/custom_bottom_sheet.dart';
import 'package:my_recrue/src/common_widgets/custom_outlined_button.dart';
import 'package:my_recrue/src/common_widgets/custom_violet_field.dart';
import 'package:my_recrue/src/core/utils/text_key.dart';

import '../../common_widgets/contact_tile.dart';
import '../../core/utils/my_assets.dart';
import 'entities/user.dart';

class ContactListFullScreen extends StatelessWidget {
  const ContactListFullScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<User> users = [
      User(name: "Alhassane Coulibaly", avatar: MyAssets.allhassaneCoul),
      User(name: "Mohamed Franck Seri", avatar: MyAssets.mohamedSeri),
      User(name: "Isaac Barron Cypher", avatar: MyAssets.isaacCypher),
      User(name: "Michael Owen", avatar: MyAssets.michaelOwen),
      User(name: "Isaac Barron Cypher", avatar: MyAssets.isaacCypher),
      User(name: "Marina Alaba", avatar: MyAssets.marinaAlaba),
      User(name: "Michael Owen", avatar: MyAssets.michaelOwen),
      User(name: "Roy de Salem Niamkey", avatar: MyAssets.royNiamkey),
      User(name: "Isaac Barron Cypher", avatar: MyAssets.isaacCypher),
      User(name: "Michael Owen", avatar: MyAssets.michaelOwen),
      User(name: "Isaac Barron Cypher", avatar: MyAssets.isaacCypher),
      User(name: "Marina Alaba", avatar: MyAssets.marinaAlaba),
      User(name: "Michael Owen", avatar: MyAssets.michaelOwen),
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25.h),
            Image.asset(MyAssets.logo, width: 102.w, height: 47.h),
            SizedBox(height: 25.h),
            CustomVioletField(),
            SizedBox(height: 10.h),
            CustomOutlinedButton(
              action: () {
                Scaffold.of(context).showBottomSheet((context) {
                  return CustomBottomSheet();
                });
              },

              text: 'Créer un contact',
              color: Colors.white,
              textColor: Theme.of(context).colorScheme.primary,
              fontSize: 16.sp,
            ),
            SizedBox(height: 10.h),

            Expanded(
              child: Stack(
                children: [
                  // Track personnalisé en fond
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 2,
                      margin: const EdgeInsets.only(right: 4), // Pour aligner avec le thumb
                      color: Colors.grey.shade100,
                    ),
                  ),

                  // Scrollbar par-dessus
                  RawScrollbar(
                    thumbColor: Colors.grey.shade400,
                    radius: const Radius.circular(8),
                    thickness: 8,
                    minThumbLength: 30,
                    // thumbVisibility: true, // Utilisez cette ligne si vous voulez que la barre de défilement soit toujours visible
                   // trackVisibility: true,
                    thumbVisibility: true,
                    child: ListView.separated(
                      itemCount: users.length,
                      separatorBuilder: (_, __) => SizedBox(height: 10.h),
                      itemBuilder: (context, index) {
                        final user = users[index];
                        return ContactTile(user: user);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
