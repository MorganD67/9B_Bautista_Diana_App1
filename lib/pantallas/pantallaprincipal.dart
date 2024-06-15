import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/one.dart';
import 'package:flutter_application_1/widgets/text.dart';
import '/datos/datos.dart'; // Importa los datos

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sky Limit'),
        backgroundColor: Colors.pink,
        actions: const [
          iconbuttons(),
          buttonicons(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: ListCard.map((post) {
            return PostItem(
              username: post['username']!,
              avatar: post['avatar']!,
              postImage: post['postImage']!,
              likes: post['likes']!,
              caption: post['caption']!,
            );
          }).toList(),
        ),
      ),
    );
  }
}
