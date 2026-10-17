import 'package:flutter/material.dart';

class BookCoverImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  const BookCoverImage({
    super.key,
    required this.imageUrl,
    this.width = 110,
    this.height = 175,
  });

  @override
  Widget build(BuildContext context) {
    final bool isNetwork = imageUrl.startsWith('http://') || imageUrl.startsWith('https://');

    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: isNetwork
          ? Image.network(
              imageUrl,
              width: width,
              height: height,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                debugPrint('Network Image Error: $error');
                return _errorPlaceholder();
              },
            )
          : Image.asset(
              imageUrl,
              width: width,
              height: height,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                // This prints the exact asset loading failure to your terminal:
                debugPrint('Asset Image Error loading "$imageUrl": $error');
                return _errorPlaceholder();
              },
            ),
    );
  }

  Widget _errorPlaceholder() {
    return Container(
      width: width,
      height: height,
      color: Colors.grey.shade300,
      child: const Icon(Icons.broken_image, color: Colors.grey),
    );
  }
}