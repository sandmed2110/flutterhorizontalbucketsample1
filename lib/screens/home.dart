import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterhorizontalbucketsample1/data/bucket.dart';
import 'package:flutterhorizontalbucketsample1/models/bucket_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<BucketModel> buckets = <BucketModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buckets = getBuckets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text("Horizontal List", style: TextStyle(color: Colors.black, fontSize: 34)),
          ],
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              ///buckets
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: buckets.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                    return BucketTile(
                      imageUrl: buckets[index].imageUrl,
                      bucketName: buckets[index].bucketName,
                    );
                    }
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}

class BucketTile extends StatelessWidget {

  final imageUrl, bucketName;
  BucketTile({this.imageUrl, this.bucketName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
                child: CachedNetworkImage
                  (imageUrl: imageUrl, width: MediaQuery.of(context).size.width*0.8 , height: MediaQuery.of(context).size.height*0.8, fit: BoxFit.cover)),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height*0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black26,
              ),
              child: Text(bucketName, style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500, fontSize: 30),),
            )
          ],
        ),
      ),
    );
  }
}

