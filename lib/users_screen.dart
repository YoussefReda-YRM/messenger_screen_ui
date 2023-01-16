import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({
    @required this.id,
    @required this.name,
    @required this.phone,
});
}

class UsersScreen extends StatelessWidget {
  @override
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Youssef Reda',
      phone: '+201149046418',
    ),
    UserModel(
      id: 2,
      name: 'Mohamed Reda',
      phone: '+201149054518',
    ),
    UserModel(
      id: 3,
      name: 'Ruqaia Reda',
      phone: '+201149046518',
    ),
    UserModel(
      id: 4,
      name: 'hend Reda',
      phone: '+201149045468',
    ),
    UserModel(
      id: 5,
      name: 'Youssef Reda',
      phone: '+201149046418',
    ),
    UserModel(
      id: 6,
      name: 'Youssef Reda',
      phone: '+201149046418',
    ),
    UserModel(
      id: 7,
      name: 'Youssef Reda',
      phone: '+201149046418',
    ),
    UserModel(
      id: 8,
      name: 'Youssef Reda',
      phone: '+201149046418',
    ),
    UserModel(
      id: 9,
      name: 'Youssef Reda',
      phone: '+201149046418',
    ),
    UserModel(
      id: 10,
      name: 'Youssef Reda',
      phone: '+201149046418',
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index)=> Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
      ),
    );
  }
  Widget buildUserItem(UserModel user)=> Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
