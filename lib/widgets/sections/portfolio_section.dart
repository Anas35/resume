import 'package:flutter/material.dart';
import 'package:resume/widgets/common/common_widget.dart';

/// A Section that display Project Images
class PortFolioSection extends StatelessWidget {
  const PortFolioSection({super.key, required this.imagesLink});

  final List<String> imagesLink;

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const RowTitle(title: 'UI Portfolio', action: 'See All'),
          const SizedBox(height: 15),
          Flexible(
            child: Center(
              child: Row(
                children: imagesLink.take(3).map((String link) {
                  return Flexible(
                    child: Container(
                    margin: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(link),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(16.0))
                    ),
                  ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}