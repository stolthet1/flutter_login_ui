import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final kvnc = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/logo.jpeg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome kvnc',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce et massa varius, fermentum dui id, maximus arcu. Aenean rutrum risus ut sapien gravida, non fringilla dolor mattis. Nulla laoreet nunc ac rutrum pharetra. Pellentesque malesuada imperdiet elit id sollicitudin.\n\n Aenean porttitor ac nisi eget interdum. Aenean justo leo, imperdiet ut dictum vitae, posuere sed mauris. Aliquam non dignissim lorem. Donec posuere sit amet neque eu pharetra. Nunc molestie sapien tellus, ut maximus nulla dictum consectetur. Maecenas id risus in mi egestas mollis.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: [kvnc, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
