import 'dart:io';

import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget{
  final String imagePath;
  final VoidCallback onClicked;

  const ProfileWidget({Key key, this.imagePath, this.onClicked,}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: buildImage(),
    );
  }

  Widget buildImage() {
    final image = NetworkImage(imagePath);

    return Ink.image(
      image: image,
      fit: BoxFit.cover,
      width: 128,
      height: 128,
      child: InkWell(onTap: onClicked),
    );
  }
}