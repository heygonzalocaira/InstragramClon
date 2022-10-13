import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    Key? key,
    required this.url,
    required this.userName,
  }) : super(key: key);

  final String url;
  final String userName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(border: Border.all(width: 0.1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(url),
                      ),
                      Text(userName),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.more_horiz),
                )
              ],
            ),
          ),
          Image(
            height: 300,
            fit: BoxFit.fitHeight,
            image: NetworkImage(url),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 8, top: 8),
                    child: Icon(Icons.favorite_border),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, top: 8),
                    child: Icon(Icons.comment),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, top: 8),
                    child: Icon(Icons.send),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8, top: 8),
                child: Icon(Icons.email),
              ),
            ],
          )
        ],
      ),
    );
  }
}
