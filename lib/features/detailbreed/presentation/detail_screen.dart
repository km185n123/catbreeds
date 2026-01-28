import 'package:catbreeds/features/detailbreed/presentation/widgets/content_detail.dart';
import 'package:catbreeds/features/detailbreed/presentation/widgets/header_detail.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          HeaderDetail(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 24, bottom: 48),
              child: ContentDetail(),
            ),
          ),
        ],
      ),
    );
  }
}
