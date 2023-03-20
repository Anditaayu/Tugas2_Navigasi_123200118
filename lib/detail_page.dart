import 'package:flutter/material.dart';
import 'identity.dart';

class DetailPage extends StatefulWidget {
  //final String pesanTerima;
  final Identity identitasTerima;

  const DetailPage({
    Key? key,
    // required this.pesanTerima,
    required this.identitasTerima,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Detail Page"),
          // automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Detail Page",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Image.network(widget.identitasTerima.fotoUrls,  width: 150, height: 100),
              ),
              Text(
                "Nama  : ${widget.identitasTerima.name}",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "Email  : 1. ${widget.identitasTerima.email[0]}",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "Email  : 2. ${widget.identitasTerima.email[1]}",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "Company  : ${widget.identitasTerima.company[0][0]} "
                    "(${widget.identitasTerima.company[0][1]})",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
