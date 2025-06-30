import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactTile extends StatelessWidget {
  final user;
  const ContactTile({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15, left: 10),
      child: Container(
        width: 300.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffF8F8F8)
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(user.avatar),
          ),
          title: Text(user.name),
          onTap: () {
            // Tu peux ajouter une action ici
          },
        ),
      ),
    );
  }
}
