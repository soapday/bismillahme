import 'package:flutter/material.dart';
import 'package:flutterapp/UI/widget/movie_box.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0,viewportFraction: 0.6);
    List<String> urls = [
        "https://images-na.ssl-images-amazon.com/images.I/A1hFzTczzJL._SL1500_.jpg",
      "https://images.unsplash.com/photo-1600711269860-ff440f53ed42?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",

    ];
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: (Text("Sabda dot")),
        backgroundColor: Colors.grey,
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: urls.length,
        itemBuilder: (context, index) => Center(child: movie_box(urls[index]),),

    ));
  }
}
