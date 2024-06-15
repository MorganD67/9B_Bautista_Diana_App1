import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/five.dart';
import 'package:flutter_application_1/widgets/four.dart';
import 'package:flutter_application_1/widgets/tarjetafeed.dart';
import 'package:flutter_application_1/widgets/three.dart';
import 'package:flutter_application_1/widgets/two.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
    required this.username,
    required this.avatar,
    required this.postImage,
    required this.likes,
    required this.caption,
    
    // required this.tarjeta
  });

  final String username;
  final String avatar;
  final String postImage;
  final String likes;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostHeader(username: username, avatar: avatar),
        PostImage(imagePath: postImage),
        const PostActions(),
        PostLikes(likes: likes),
        PostCaption(caption: caption),
        const Divider(),
      ],
    );
  }
}
