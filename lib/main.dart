import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Post Social',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const SocialMediaScreen(),
    );
  }
}

class SocialMediaScreen extends StatelessWidget {
  const SocialMediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expreso Paloma'),
      ),
      body: const SocialMediaPostsList(),
    );
  }
}

class SocialMediaPostsList extends StatelessWidget {
  const SocialMediaPostsList({super.key});

  final List<SocialMediaPostModel> posts = const [
    SocialMediaPostModel(
      avatarInitial: 'A',
      name: 'Arthur Chen',
      timeAgo: '3 hrs',
      description: 'Song: I want you for the Mitski :D',
      imageUrl: 'https://i.pinimg.com/564x/ed/db/71/eddb71e6009d588b6e0246c9f7d6dc76.jpg',
    ),
    SocialMediaPostModel(
      avatarInitial: 'N',
      name: 'Natalia Spalla',
      timeAgo: '2 hrs',
      description: 'i want you, i hold one cart that i can not use, but i want you',
      imageUrl: 'https://i.pinimg.com/564x/e6/28/60/e6286051b27f1bb3787f8573537155d2.jpg',
    ),
    SocialMediaPostModel(
      avatarInitial: 'A',
      name: 'Alejandro Magno',
      timeAgo: '3 hrs',
      description: 'You are coming back, and it is the end of the world',
      imageUrl: 'https://i.pinimg.com/564x/19/a8/3a/19a83a4e5f332c09aa7b408fe48f359f.jpg',
    ),
    SocialMediaPostModel(
      avatarInitial: 'D',
      name: 'Dylan Mars',
      timeAgo: '3 hrs',
      description: 'we are starting over and i love u darling and i am done, dear',
      imageUrl: 'https://i.pinimg.com/564x/3d/a2/ef/3da2ef77f43f74870413d1b2c5ae2c74.jpg',
    ),
    SocialMediaPostModel(
      avatarInitial: 'M',
      name: 'Miguel Martinez',
      timeAgo: '3 hrs',
      description: 'You are in the house and i am here in the car',
      imageUrl: 'https://i.pinimg.com/564x/36/bd/b1/36bdb1b2e9440fff08e63ee88872af54.jpg',
    ),
    SocialMediaPostModel(
      avatarInitial: 'D',
      name: 'David Pharrel',
      timeAgo: '3 hrs',
      description: 'I just need a quiet place, where i can scream',
      imageUrl: 'https://i.pinimg.com/736x/20/d5/11/20d511ebc42edbfa9788544153d3dd0d.jpg',
    ),
    SocialMediaPostModel(
      avatarInitial: 'C',
      name: 'Carolina Long',
      timeAgo: '3 hrs',
      description: 'How i love you',
      imageUrl: 'https://i.pinimg.com/564x/99/a3/98/99a39806cc7901c8b70ac9e4b4414337.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return SocialMediaPostCard(post: posts[index]);
      },
    );
  }
}

class SocialMediaPostModel {
  final String avatarInitial;
  final String name;
  final String timeAgo;
  final String description;
  final String imageUrl;

  const SocialMediaPostModel({
    required this.avatarInitial,
    required this.name,
    required this.timeAgo,
    required this.description,
    required this.imageUrl,
  });
}

class SocialMediaPostCard extends StatelessWidget {
  final SocialMediaPostModel post;

  const SocialMediaPostCard({required this.post, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Text(post.avatarInitial),
              ),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    post.timeAgo,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Text(
            post.description,
            style: const TextStyle(
              fontSize: 14.0,
            ),
          ),
          const SizedBox(height: 10.0),
          Image.network(post.imageUrl),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                icon: const Icon(
                  Icons.thumb_up_outlined,
                  color: Colors.red, // Cambia esto al color que desees para el icono
                ),
                label: const Text(
                  'Me gusta',
                  style: TextStyle(color: Colors.red), // Cambia esto al color que desees para el texto
                ),
                onPressed: () {
                  // Acción al dar "Me gusta"
                  print('Me gusta presionado');
                },
              ),
              TextButton.icon(
                icon: const Icon(
                  Icons.comment_outlined,
                  color: Colors.blue, // Cambia esto al color que desees para el icono
                ),
                label: const Text(
                  'Comentario',
                  style: TextStyle(color: Colors.blue), // Cambia esto al color que desees para el texto
                ),
                onPressed: () {
                  // Acción al comentar
                  print('Comentario presionado');
                },
              ),
              TextButton.icon(
                icon: const Icon(
                  Icons.share_outlined,
                  color: Colors.green, // Cambia esto al color que desees para el icono
                ),
                label: const Text(
                  'Compartir',
                  style: TextStyle(color: Colors.green), // Cambia esto al color que desees para el texto
                ),
                onPressed: () {
                  // Acción al compartir
                  print('Compartir presionado');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}