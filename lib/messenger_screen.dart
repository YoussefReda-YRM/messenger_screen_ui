import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.black,
        elevation: 0.0,
        title:Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage:NetworkImage('https://ggirls.cc/wp-content/uploads/2018/07/1185-1.jpg') ,
            ),
            SizedBox(width: 15.0,),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.grey[700],

                child: Icon(
                  Icons.camera_alt,
                  size: 16.0,
                  color: Colors.white,
                ),
              ),

              onPressed: (){},
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.grey[700],
              child: Icon(
                Icons.edit,
                size: 16.0,
                color: Colors.white,
              ),
            ),

            onPressed: (){},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.grey[700],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 15.0,),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index)=> buildStoryItem(),
                  separatorBuilder: (context, index)=> SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index)=> buildChatItem(),
                separatorBuilder: (context, index)=> SizedBox(
                  height: 20.0,
                ),
                itemCount: 15,
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
              'https://ggirls.cc/wp-content/uploads/2018/07/1185-1.jpg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor:Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Youssef Reda',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Hello youssef reda your age is 20',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: 3.0,
                    height: 3.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '02:00 PM',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  ) ;

  Widget buildStoryItem() => Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                'https://ggirls.cc/wp-content/uploads/2018/07/1185-1.jpg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor:Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(height: 6.0,),
        Text(
          'Youssef Reda',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  ) ;
}
