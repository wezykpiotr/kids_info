import 'package:flutter/material.dart';
import 'package:kids_info/util/child_tile.dart';

class DocumentsInfoPage extends StatelessWidget {
  const DocumentsInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List tileList = [
      ['Passport', Colors.blue, 'assets/icons/passport.png'],
      ['ID Card', Colors.green, 'assets/icons/id_card.png'],
      ['Health Record', Colors.red, 'assets/icons/health_record.png'],
      ['PESEL', Colors.yellow, 'assets/icons/security.png'],
    ];

    return Scaffold(
      body: GridView.builder(
        itemCount: tileList.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.6,
        ),
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return ChildTile(
                tabName: tileList[index][0],
                tileColor: tileList[index][1],
                imageName: tileList[index][2],
                value: "Number",
              );
            case 1:
              return ChildTile(
                tabName: tileList[index][0],
                tileColor: tileList[index][1],
                imageName: tileList[index][2],
                value: "Number",
              );
            case 2:
              return ChildTile(
                tabName: tileList[index][0],
                tileColor: tileList[index][1],
                imageName: tileList[index][2],
                value: "Number",
              );
            case 3:
              return ChildTile(
                tabName: tileList[index][0],
                tileColor: tileList[index][1],
                imageName: tileList[index][2],
                value: "Number",
              );
            default:
              return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
