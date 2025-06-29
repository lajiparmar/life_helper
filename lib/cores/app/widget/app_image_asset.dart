import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// ✅ Handles network images with caching
class AppNetworkImage extends StatelessWidget {

  const AppNetworkImage({
    required this.imageUrl, super.key,
    this.height,
    this.width,
    this.boxFit = BoxFit.cover,
  });
  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit boxFit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      fit: boxFit,
      placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => const Icon(Icons.broken_image),
    );
  }
}

/// ✅ Handles local assets
class AppLocalImage extends StatelessWidget {

  const AppLocalImage({
    required this.assetPath, super.key,
    this.height,
    this.width,
    this.boxFit = BoxFit.cover,
  });
  final String assetPath;
  final double? height;
  final double? width;
  final BoxFit boxFit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetPath,
      height: height,
      width: width,
      fit: boxFit,
      errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
    );
  }
}

/// ✅ Handles SVG images
class AppSvgImage extends StatelessWidget {

  const AppSvgImage({
    required this.assetPath, super.key,
    this.height,
    this.width,
    this.color,
    this.boxFit = BoxFit.cover,
  });
  final String assetPath;
  final double? height;
  final double? width;
  final BoxFit boxFit;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetPath,
      height: height,
      width: width,
      fit: boxFit,
    );
  }
}

/// ✅ Wrapper Widget to Automatically Pick the Right Image Type
class AppImage extends StatelessWidget {

  const AppImage({
    required this.image, super.key,
    this.height,
    this.width,
    this.color,
    this.boxFit = BoxFit.cover,
  });
  final String image;
  final double? height;
  final double? width;
  final BoxFit boxFit;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (image.toLowerCase().endsWith('.svg')) {
      return AppSvgImage(assetPath: image, height: height, width: width, boxFit: boxFit,);
    } else if (image.startsWith('http')) {
      return AppNetworkImage(imageUrl: image, height: height, width: width, boxFit: boxFit);
    } else {
      return AppLocalImage(assetPath: image, height: height, width: width, boxFit: boxFit);
    }
  }
}
