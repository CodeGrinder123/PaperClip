import 'package:flutter/material.dart';

class TradeCard extends StatefulWidget{
  final String urlImage;

  const TradeCard({
    Key key,
    this.urlImage,
  }) : super(key: key);

  @override 
  State<TradeCard> createState() => _TradeCard();
}

class _TradeCard extends State<TradeCard>{
  @override 

  Widget build(BuildContext context) => SizedBox.expand(
    child: buildCard(),
  );

  Widget buildCard() => ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child:Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(widget.urlImage),
          fit: BoxFit.cover,
          alignment: Alignment(-0.3, 0),
        ),
      ),
    ),
  );
}