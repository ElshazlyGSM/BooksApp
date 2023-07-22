import 'package:bookly/features/home/presentation/views/widgets_home_view/loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    //AspectRatio(aspectRatio: 3 / 2)
    // you can wrap the sizedBox with AspectRatio to resize image right
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          placeholder: (context, url) => Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child:  const LoadingWidget(padding: 0),
          ),
          errorWidget: (context, url, error) =>
              const Icon(Icons.error_outline_outlined),
          fit: BoxFit.cover,
          imageUrl: imageUrl,
        ),
      ),
    );
  }
}
