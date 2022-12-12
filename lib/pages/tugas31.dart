import 'package:flutter/material.dart';

import '../utils.dart';

class Tugas31 extends StatelessWidget {
  const Tugas31({super.key});

  @override
  Widget build(BuildContext context) {
    //Declaration
    final dataNama = [
      "Rizki",
      "Ahmad",
    ];

    final dataJob = [
      "Programmer",
      "Designer",
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
      
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          ListView.builder(
            itemCount: dataNama.length,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(
                    dataNama[index],
                    style: fontStyle,
                  ),
                  subtitle: Text(dataJob[index], style: fontStyle),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.edit,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Icon(
                        Icons.delete,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
