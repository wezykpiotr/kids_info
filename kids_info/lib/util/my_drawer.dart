import 'package:flutter/material.dart';
import 'package:kids_info/util/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
    required this.onPersonalInfoTap,
    required this.onAnalyticsInfoTap,
    required this.onDocumentsTap,
    required this.onAppointmentsTap,
  });
  final void Function()? onPersonalInfoTap;
  final void Function()? onAnalyticsInfoTap;
  final void Function()? onDocumentsTap;
  final void Function()? onAppointmentsTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[800],
      child: Column(
        children: [
          const DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 64,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "EDIT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
          ),
          MyListTile(
            title: "P E R S O N A L    I N F O",
            iconPath: 'assets/icons/personal-info.png',
            onTap: onPersonalInfoTap,
          ),
          MyListTile(
            title: "A N A L Y T I C S    I N F O",
            iconPath: 'assets/icons/analytics.png',
            onTap: onAnalyticsInfoTap,
          ),
          MyListTile(
            title: "D O C O C U M E N T S",
            iconPath: 'assets/icons/documents.png',
            onTap: onDocumentsTap,
          ),
          MyListTile(
            title: "A P P O I N T M E N T S",
            iconPath: 'assets/icons/appointment.png',
            onTap: onAppointmentsTap,
          ),
        ],
      ),
    );
  }
}
