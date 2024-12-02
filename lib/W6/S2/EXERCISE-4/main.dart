import 'package:flutter/material.dart';
import 'package:flutter_course/W6/S2/EXERCISE-4/jokes.dart';

Color appColor = Colors.green[300] as Color;

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: appColor,
          title: const Text("Favorite Jokes"),
        ),
        body:SingleChildScrollView(
          child: Column(
            children:[
              ...joke.map((item) => FavoriteCard(joke:item))
            ]
          ),
        ),
      ),
    ));

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({
    super.key,
    required this.joke
  });

  final Jokes joke;
  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool _isFavorite = false;

  void onFavoriteClick() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: .5, color: Colors.grey),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.joke.title,
                  style: TextStyle(
                      color: appColor, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 10.0),
                Text(
                  widget.joke.contents)
              ],
            ),
          ),
          IconButton(
              onPressed: onFavoriteClick,
              icon: Icon(
                _isFavorite ? Icons.favorite : Icons.favorite_border,
                color: _isFavorite ? Colors.red : Colors.grey,
              ))
        ],
      ),
    );
  }
}
