import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/helper/data.dart';
import 'package:news_app/model/category_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<CategoryModel> categories = new List<CategoryModel>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Flutter"),
            Text("News", style: TextStyle(
              color: Colors.yellowAccent,
            ),)
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 70,
              child: ListView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return CategoryTile(
                    imageUrl: categories[index].imageUrl,
                    name: categories[index].categoryName  ,

                  );
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final imageUrl, name;
  CategoryTile({this.imageUrl, this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Stack(
         children: <Widget>[
           ClipRRect(
             borderRadius: BorderRadius.circular(6),
               child: Image.network(imageUrl, width: 120,height: 60,fit:BoxFit.cover,)
           ),
           Container(
             width: 120,
             height: 60,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(6),
               color: Colors.black26,
             ),
             child: Text(name, style: TextStyle(
               color: Colors.white
               //fontWeight: FontWeight.bold,
             ),),
           )
         ],
      ),
    );
  }
}

