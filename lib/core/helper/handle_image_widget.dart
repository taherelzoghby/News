import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../consts/strings.dart';
import '../widgets/custom_loading.dart';

class HandleImageWidget extends StatelessWidget {
  const HandleImageWidget({
    super.key,
    required this.image,
    this.height,
  });

  final String image;
  final double? height;

  @override
  Widget build(BuildContext context) {
    String type = checkPhotoType(image);
    switch (type) {
      case 'jpg' || 'png':
        return Image.asset(
          image,
          height: height,
        );
      case 'svg':
        return SvgPicture.asset(
          image,
          height: height,
        );
      case 'network':
        return CachedNetworkImage(
          imageUrl: image,
          height: height,
          progressIndicatorBuilder:
              (context, String data, DownloadProgress pr) =>
                  const CustomLoading(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        );
      default:
        return const Icon(Icons.error);
    }
  }
}

//check photo type
String checkPhotoType(String image) =>
    image.endsWith(Strings.jpg) && !image.startsWith(Strings.https)
        ? Strings.jpg
        : image.endsWith(Strings.png) && !image.startsWith(Strings.https)
            ? Strings.png
            : image.endsWith(Strings.svg)
                ? Strings.svg
                : Strings.network;
