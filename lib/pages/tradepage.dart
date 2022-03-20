import 'package:flutter/material.dart';
import 'package:paperclip/widget/trade_card.dart';

class TradePage extends StatelessWidget{
  @override 

  Widget build(BuildContext context)=> Scaffold(
    resizeToAvoidBottomInset: false,
    
    body: SafeArea(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16.0),
        child: TradeCard(
          //urlImage: '',
        ),
      ),
    ),
  );
  
}