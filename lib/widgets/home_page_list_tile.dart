import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final String userName;
  final String subtitleUser;
  final String netImage;
  final Function deleteUser;
  ListTileWidget(
      {required this.netImage, required this.userName, required this.subtitleUser,required this.deleteUser});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            radius: 24,
            backgroundColor: Colors.lightGreen,
            backgroundImage: NetworkImage(
              netImage,
              // "https://images.unsplash.com/photo-1590420485404-f86d22b8abf8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"
            ),
          ),
          title: Text(
            userName,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            subtitleUser,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
          trailing: IconButton(
            onPressed: () {
              deleteUser(userName);
            },
            icon: Icon(
              Icons.delete_outline_sharp,
              size: 28,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
