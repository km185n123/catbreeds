import 'package:catbreeds/features/detailbreed/presentation/widgets/content_detail.dart';
import 'package:catbreeds/features/detailbreed/presentation/widgets/header_detail.dart';
import 'package:catbreeds/features/landing/domain/entities/cat_breed.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final CatBreed breed;

  const DetailScreen({super.key, required this.breed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderDetail(breed: breed),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 24, bottom: 48),
              child: ContentDetail(breed: breed),
            ),
          ),
        ],
      ),
    );
  }
}
