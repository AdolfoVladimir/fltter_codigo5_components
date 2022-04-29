import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        centerTitle: true,
        elevation: 10.0,
        backgroundColor: Colors.indigo,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              "F",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            ),
          ),
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
      ),
      body: Column(
        children: [
          FadeInImage(
              placeholder: AssetImage("assets/image/loading.gif"),
              image: NetworkImage(
                "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              )),
          //Image.asset("assets/image/loading.gif"),
          //Image.network("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",),
        ],
      ),
    );
  }
}
