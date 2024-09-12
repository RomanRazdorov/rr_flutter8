import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetworkCachedImagePage extends StatelessWidget {
  const NetworkCachedImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network Cached Image'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: _sizedContainer(
        CachedNetworkImage(
          imageUrl:
              'https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png',
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }

  Widget _sizedContainer(Widget child) {
    return SizedBox(
      width: 300,
      height: 150,
      child: Center(child: child),
    );
  }
}
