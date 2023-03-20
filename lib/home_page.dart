import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'identity.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String pesanKirim = "Ini data yang dikirim";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          final Identity dataIdentity = listIdentity[index];
          return Card(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage(identitasTerima: dataIdentity);
                }));
              },
              child: Row(
                children: [
                  Container(
                    width: 200,
                    height: 100,
                    padding: EdgeInsets.only (left: 20, right: 10),
                    child: Image(
                      image: NetworkImage(
                          dataIdentity.fotoUrls.toString()),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(dataIdentity.name),
                ],
              ),
            ),
          );
        },
          itemCount: listIdentity.length,
        ),
      ),
    );
  }
}
