import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TheDumbbot'),
      ),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Row(children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.amber,
            ),
            Expanded(
              child: Column(
                children : [
                  Expanded(
                    child: StreamBuilder(
                      stream: ,
                      builder: (context, snapshot){

                      }
                    )
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: TextField(),
                  ),
                ]
              )
            )
          ])),
    );
  }
}
