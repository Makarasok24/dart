import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: const Column(
          children: [
            FavoriteCard(),
            FavoriteCard(),
            FavoriteCard(),
            FavoriteCard()
          ],
        ),
      ),
    ));

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({
    super.key,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavorite = false;
  void isFavorites(){
    setState(() {
      isFavorite = !isFavorite;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.5,color: Colors.grey)
          ),
        ),
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Title",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue
                    ),
                  ),
                  Text(
                    "description"
                  ),
                ],
            ),
            ),
            IconButton( 
              onPressed: () => 
              {isFavorites()},
              icon: Icon(
                isFavorite ? Icons.favorite 
                : Icons.favorite_border_outlined,
                color: isFavorite ? Colors.red[500] : Colors.grey[500],
              )                    
            )
          ],
        ),
    );
  }
}
