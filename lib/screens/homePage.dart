import 'package:flutter/material.dart';

import '../utils/Variable.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Education",
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(top: 10),
          itemCount: Variable.education.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                contentPadding: const EdgeInsets.all(8),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                horizontalTitleGap: 20,
                tileColor: (i % 2 == 0) ? Colors.white : Colors.black,
                title: Text(
                  Variable.education[i]['name'],
                  style: TextStyle(
                    fontSize: 20,
                    color: (i % 2 == 0) ? Colors.black : Colors.white,
                  ),
                ),
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: NetworkImage(Variable.education[i]['image']),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'site',
                      arguments: Variable.education[i]['site']);
                },
              ),
            );
          },
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
