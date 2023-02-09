import 'package:flutter/material.dart';
import 'package:list_of_users/widgets/home_page_list_tile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> usersList = [
    {
      "name": "Oltinbekov Bunyod",
      "phoneNumber": "99-102-30-04",
      "image":
          "https://images.unsplash.com/photo-1548246749-90723bda1261?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"
    },
    {
      "name": "O'skanov Xondamir",
      "phoneNumber": "99-707-88-35",
      "image":
          "https://images.unsplash.com/photo-1548246749-90723bda1261?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"
    },
    {
      "name": "Yangiboyev Erali",
      "phoneNumber": "99-102-30-04",
      "image":
          "https://images.unsplash.com/photo-1548246749-90723bda1261?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"
    },
    {
      "name": "Hakimov Eldor",
      "phoneNumber": "99-102-30-04",
      "image":
          "https://images.unsplash.com/photo-1548246749-90723bda1261?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"
    },
    {
      "name": "Odilov Dior",
      "phoneNumber": "99-102-30-04",
      "image":
          "https://images.unsplash.com/photo-1548246749-90723bda1261?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"
    },
    {
      "name": "O'rozmurodov Asadbek",
      "phoneNumber": "99-102-30-04",
      "image":
          "https://images.unsplash.com/photo-1548246749-90723bda1261?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"
    },
    {
      "name": "Kuatov Quvonchboy",
      "phoneNumber": "99-102-30-04",
      "image":
          "https://images.unsplash.com/photo-1548246749-90723bda1261?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"
    },
    {
      "name": "Yoldoshev Jamoliddin",
      "phoneNumber": "99-102-30-04",
      "image":
          "https://images.unsplash.com/photo-1548246749-90723bda1261?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"
    },
    {
      "name": "Husanov Xojiakbar",
      "phoneNumber": "99-102-30-04",
      "image":
          "https://images.unsplash.com/photo-1548246749-90723bda1261?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"
    },
    {
      "name": "Boytemirov Navruz",
      "phoneNumber": "99-102-30-04",
      "image":
          "https://images.unsplash.com/photo-1548246749-90723bda1261?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"
    },
    {
      "name": "Rahmonov Ilyos",
      "phoneNumber": "99-102-30-04",
      "image":
          "https://images.unsplash.com/photo-1548246749-90723bda1261?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"
    },
  ];

  deleteUser(String deleteName) {
    setState(() {
      usersList.removeWhere((element) {
        return element['name'] == deleteName;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: Icon(
          Icons.search,
          size: 30,
          color: Colors.white54,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Center(
              child: Text(
                "Foydalanuvchilar ro'yxati",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black54,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Expanded(
              child: ListView(
                  itemExtent: 80,
                  children: usersList.map((item) {
                    return ListTileWidget(
                      netImage: item["image"]!,
                      userName: item['name']!,
                      subtitleUser: item['phoneNumber']!,
                      deleteUser: deleteUser,
                    );
                  }).toList()),
            )
          ],
        ),
      ),
    );
  }
}
