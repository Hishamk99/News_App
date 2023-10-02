import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'bqwlfuwfnkjfdnkanvkanvknbksnknfksjlsdm',
            overflow: TextOverflow.ellipsis,
            style:  TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'bqwlfuwfnkjfdnkanvkansefkoJGOFJAS;;F;IsjfdoijsdjdshfdYTSDUSAv',
            maxLines: 2,
            style:  TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w200,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
