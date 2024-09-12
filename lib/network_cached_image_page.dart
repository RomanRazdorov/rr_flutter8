import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rr_flutter8/app_env.dart';

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
      backgroundColor: Colors.black54,
      // body: _sizedContainer(
      //   CachedNetworkImage(
      //     imageUrl:
      //         'https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png',
      //     placeholder: (context, url) => const CircularProgressIndicator(),
      //     errorWidget: (context, url, error) => const Icon(Icons.error),
      //   ),

      body: ListView.builder(
        itemCount: AppEnv.imageUrls.length,
        itemBuilder: (context, index) => Card(
          child: CachedNetworkImage(
            fit: BoxFit.fitWidth,
            imageUrl: AppEnv.imageUrls[index],
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ), //_sizedContainer(
      ),
    );
  }

  // Widget _sizedContainer(Widget child) {
  //   return SizedBox(
  //     width: 513,
  //     height: 513,
  //     child: Center(child: child),
  //   );
  // }
}
