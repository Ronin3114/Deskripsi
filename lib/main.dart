import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
       appBar: AppBar(title: Text("Detail Informasi"),),
       body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
         children: <Widget>[
         Container(
           width: 400,
           height: 400,

           child: Image(
             image: NetworkImage("https://s1.bukalapak.com/img/16708903262/large/data.jpeg"),
               fit: BoxFit.cover, 
             )
            ,padding: EdgeInsets.all(20),
           ),
           Text("Kursi Corak Kuning Abu"),
           Text("Rp. 400.000"),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Center(
        child: Container(
          width: 90,
          height: 30,
          padding: EdgeInsets.all(3),
          child: Image(
          image: NetworkImage("https://st2.depositphotos.com/1167801/8923/i/600/depositphotos_89234054-stock-photo-five-star-rating-shiny-golden.jpg"),
            fit: BoxFit.cover, 
               )
                 ),
      ),
               Text("10RB+ Terjual"),
               Image(
                 width: 25,
                 height: 25,
                 image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRG6HeC2Y4ch1beUcQ68_zGrVfqlERPYJl4klmG3-XJQoEwQVVjV60rQDoxSRHQHpjNOHU&usqp=CAU"),
                fit: BoxFit.cover,
               ),
               Image(
                 width: 25,
                 height: 25,
                 image: NetworkImage("https://cdn3.iconfinder.com/data/icons/virtual-notebook/16/button_share-512.png"),
                  fit: BoxFit.cover,
               ),
                Image(
                 width: 25,
                 height: 25,
                 image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkA5Z6F6VwKTLsJ4lnkQwt01z87C5Sx5krTQ&usqp=CAU"),
                  fit: BoxFit.cover,
                ),
             ]
             ),
             Voucher(),
             ]
         ),
     ),

     );
  }
}

class Deskripsi {
}
class Voucher extends StatelessWidget {
  
  @override

  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: Table(
          columnWidths: {1: FractionColumnWidth(.2)},
          border: TableBorder.all(color: Colors.white70),
          children: [
            TableRow(children: [
              Text('Stok'),
              Text('101'),
            ]),
            TableRow(children: [
              Text('Merek '),
              Text('Kimko'),
            ]),
            TableRow(children: [
              Text('Dikirim Dari '),
              Text('Denpasar, Bali'),
            ])
          ],
        ),
      );
}
}
