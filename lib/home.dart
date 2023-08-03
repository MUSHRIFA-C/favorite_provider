
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertsk11/fav.dart';
import 'package:fluttertsk11/provider/fav_provider.dart';
import 'package:provider/provider.dart';

class Fav extends StatefulWidget {
  const Fav({Key? key}) : super(key: key);

  @override
  State<Fav> createState() => _FavState();
}

class _FavState extends State<Fav> {

  List words = ['time','year','people','way','day','man','thing','women','life','child','world','school','flower','plant','chair','eyes'];

  @override
  Widget build(BuildContext context) {

    final object=Provider.of<FavoriteProvider>(context);

    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Favresult()));
          },

          label: Text('favorites',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
        ),
        appBar: AppBar(
          title: Text('English Words',
            style: TextStyle(fontSize: 25),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: words.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(words[index],
                          style: TextStyle(fontSize: 25),),
                          IconButton(
                            onPressed: (){
                              object.favorites(words[index]);
                            },
                            icon: object.icon_change(words[index]) ?
                            Icon(Icons.favorite,color: Colors.red,) :
                            Icon(Icons.favorite_outline,color: Colors.grey.shade500,),
                          ),
                        ],

                      ),
                      Divider(thickness: 1,),
                    ],
                  ),
                );

              }
          ),

        )

    );





  }
}
