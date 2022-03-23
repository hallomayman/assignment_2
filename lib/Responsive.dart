import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  List<String> data = [
    'FIRST ELEMENT',
    'SECOND ELEMENT',
    'THIRD ELEMENT',
    'FORTH ELEMENT',
    'FIFTHE ELEMENT'
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
            return landscapeLayout();
          } else {
            return portraitLayout();
          }
        },
      ),
    );
  }

  Widget landscapeLayout() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent[700],
        title: const Text(
          'SECOND ASIGNMENT',
        ),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              //color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            data[index],
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        );
                      },
                    )),
              ),
            ),
          ),
          Expanded(child: Container(color: Colors.red[300])),
        ],
      ),
    );
  }

  Widget portraitLayout() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent[700],
        title: const Text(
          'SECOND ASIGNMENT',
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white70,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        data[index],
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  },
                )),
          ),
        ),
      ),
      body: Container(color: Colors.red[300]),

      //color: Colors.redAccent,

      //  body: Container(
      // child: ListView(
      //children: [
      // Padding(
      //   padding: const EdgeInsets.all(20.0),
      //   child: Text('FIRST ELEMENT'),
      //  ),
      //  Text('SECOND ELEMENT'),
      //  Text('THIRD ELEMENT'),
      //  Text('FORTH ELEMENT'),
      //  Text('FIFTHE ELEMENT')
      //  ],
      // ),
      // )
    );
  }
}









//color: Colors.redAccent,


      //  body: Container(
      // child: ListView(
      //children: [
      // Padding(
      //   padding: const EdgeInsets.all(20.0),
      //   child: Text('FIRST ELEMENT'),
      //  ),
      //  Text('SECOND ELEMENT'),
      //  Text('THIRD ELEMENT'),
      //  Text('FORTH ELEMENT'),
      //  Text('FIFTHE ELEMENT')
      //  ],
      // ),
      // )

