import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UI/style/style.dart';

class movie_box extends StatelessWidget {
  final String url;

  movie_box(this.url);
  @override
  Widget build(BuildContext context) {
    return Parent(
        style: parentStyle.clone()..background.image(url: url,fit: BoxFit.cover),
    );
  }
}
