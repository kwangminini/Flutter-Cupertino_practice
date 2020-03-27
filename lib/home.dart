import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width; //화면 사이즈 설정
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Happy BirthDay')
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 1.0), //위에만 패딩 설정
        child:Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 50.0), //위에만 패딩 설정
                        child:Container(
                            child:Image.asset('images/birthday.jpg',width: width.toDouble(),fit: BoxFit.cover,) //로컬 이미지 로딩
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children:<Widget>[
                           Padding(padding: EdgeInsets.only(top: 400.0),
                           child:
                           SizedBox(
                               width: 250,
                               height: 250,
                               child: CircleAvatar(
                                   backgroundImage: ExactAssetImage('images/face2.png')
                               )
                           )
                           ),

                       ]
                      )

                    ],
                  )
                ],
              )
            )


    );
  }
}
